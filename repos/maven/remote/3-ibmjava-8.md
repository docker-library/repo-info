## `maven:3-ibmjava-8`

```console
$ docker pull maven@sha256:3c5d28bca5e7bc02c20d3d6a4638933351c86e6ce5bb1ea8a999db273b0303cc
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `maven:3-ibmjava-8` - linux; amd64

```console
$ docker pull maven@sha256:db59a0b39c48e74658992f21667a96f3f59e489d0327c5bccd01ffb8323ee0e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.9 MB (217878607 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92cfc3a33095af29e19a5a00a44eee35338aa8f7e22b2c59ee3386d3ab752094`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Tue, 18 Aug 2026 01:18:42 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Tue, 18 Aug 2026 01:18:42 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:18:42 GMT
ENV JAVA_VERSION=8.0.8.70
# Tue, 18 Aug 2026 01:18:50 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='3dbad870105877617434e8bc7be2f8254de9391add4920347e793aa616aacd00';          YML_FILE='8.0/sdk/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='2fa08a3a0bd0b40ea414d85cbe34691471693ca48b0c9056641eb79b27065cc0';          YML_FILE='8.0/sdk/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='b3cbe10f8eed41d4addec8de004e1a1be50282060b530a302816f57b234929e1';          YML_FILE='8.0/sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Tue, 18 Aug 2026 01:18:50 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Tue, 18 Aug 2026 02:21:57 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 02:21:57 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 18 Aug 2026 02:21:57 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 18 Aug 2026 02:21:57 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 18 Aug 2026 02:21:57 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 18 Aug 2026 02:21:57 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 18 Aug 2026 02:21:57 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 18 Aug 2026 02:21:57 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 18 Aug 2026 02:21:57 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 18 Aug 2026 02:21:57 GMT
ARG USER_HOME_DIR=/root
# Tue, 18 Aug 2026 02:21:57 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 18 Aug 2026 02:21:57 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 18 Aug 2026 02:21:57 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5e79033bc4a3834c712aff420d5e68c705270f566c39afc5c8da9f0d863795a`  
		Last Modified: Tue, 18 Aug 2026 01:19:07 GMT  
		Size: 1.4 MB (1409004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9acd88c104d0b92a5a12746d733f5924b10d7614af8a85fe2419cd16b991b3cf`  
		Last Modified: Tue, 18 Aug 2026 01:19:11 GMT  
		Size: 174.3 MB (174253581 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5e5d0ac119425c1dc9b90d0edd8b47cb6028f23d61204e97fc8dc8e00c5a275`  
		Last Modified: Tue, 18 Aug 2026 02:22:07 GMT  
		Size: 3.1 MB (3118095 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2277defc27738b68ee0fef4eec9b5cf1068fca081701e718c152de73f37328c`  
		Last Modified: Tue, 18 Aug 2026 02:22:07 GMT  
		Size: 9.4 MB (9359977 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:808d90b590a2de6b974da3343605c5623c29477d8ed68abde7a992076e2bffe3`  
		Last Modified: Tue, 18 Aug 2026 02:22:07 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51f6a0f6fe0c41e3c048b3e84963e0fa7604dfe1cd20a390809200e07b4f438b`  
		Last Modified: Tue, 18 Aug 2026 02:22:07 GMT  
		Size: 156.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-ibmjava-8` - unknown; unknown

```console
$ docker pull maven@sha256:96c4f6e18cd54392084fb42ce9c34d871c34615fec0508c811acbc0c40ce9d2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3278038 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6984e94b0981d28b3509d2a4fa40450c5d527c8dba99b094d3defd232b9c24e9`

```dockerfile
```

-	Layers:
	-	`sha256:0883bf2b5a9506efc843950f5f0616847ce0d7d038a337ff764d1ae825d3beb8`  
		Last Modified: Tue, 18 Aug 2026 02:22:07 GMT  
		Size: 3.3 MB (3261259 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:02218757bfd40e2aaf6cd67749edeaf2fdcbc50fa0a7a12ab3f07f8838e35bf9`  
		Last Modified: Tue, 18 Aug 2026 02:22:06 GMT  
		Size: 16.8 KB (16779 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-ibmjava-8` - linux; ppc64le

```console
$ docker pull maven@sha256:d84a623b3ea9adff7a29a98e9bbcf5aa2fe40491eb8a32c76aa352ced324d10b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.5 MB (224450809 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aec8b873f25754730cf380a1d6b06f01a609e3af5623e103719872efea655d15`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 31 Jul 2026 21:52:30 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:52:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:52:30 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:52:33 GMT
ADD file:f48db2a791f6b574e2518d202e6b75268dc7b57826c0aa7a238e41ef3f2dbaeb in / 
# Fri, 31 Jul 2026 21:52:34 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 02:04:21 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Tue, 04 Aug 2026 02:04:21 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:04:21 GMT
ENV JAVA_VERSION=8.0.8.70
# Tue, 04 Aug 2026 02:05:51 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='3dbad870105877617434e8bc7be2f8254de9391add4920347e793aa616aacd00';          YML_FILE='8.0/sdk/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='2fa08a3a0bd0b40ea414d85cbe34691471693ca48b0c9056641eb79b27065cc0';          YML_FILE='8.0/sdk/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='b3cbe10f8eed41d4addec8de004e1a1be50282060b530a302816f57b234929e1';          YML_FILE='8.0/sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Tue, 04 Aug 2026 02:05:51 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Tue, 04 Aug 2026 07:42:30 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 07:42:30 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 04 Aug 2026 07:42:30 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 04 Aug 2026 07:42:30 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 04 Aug 2026 07:42:30 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 04 Aug 2026 07:42:30 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 04 Aug 2026 07:42:30 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 04 Aug 2026 07:42:31 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 04 Aug 2026 07:42:31 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 04 Aug 2026 07:42:31 GMT
ARG USER_HOME_DIR=/root
# Tue, 04 Aug 2026 07:42:31 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 04 Aug 2026 07:42:31 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 04 Aug 2026 07:42:31 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:f47d82beca9eaeb15de580e2a4f77f430e6d50327a147c5b9295c3c9879cbaeb`  
		Last Modified: Fri, 31 Jul 2026 22:54:10 GMT  
		Size: 34.6 MB (34637666 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be19289d7e26d515baa16ed5b13c21a1823bdf4f0ea85b4961b5fbd77cbcf3fc`  
		Last Modified: Tue, 04 Aug 2026 02:05:01 GMT  
		Size: 1.5 MB (1494500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42fa524b40e5d5b4ad0091cc4f61eaf4708faaa9d0feeb3090ac97c5b73ca177`  
		Last Modified: Tue, 04 Aug 2026 02:06:27 GMT  
		Size: 175.0 MB (175026624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5273d73d8b83aaa9c31ab222e72d5adcca9721b6a5d266f5953bf0282d4a9c90`  
		Last Modified: Tue, 04 Aug 2026 07:42:54 GMT  
		Size: 3.9 MB (3931044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ead8f1dba8290951547971399ee3a9759cd4dc67da6c2459a1464870b5751a33`  
		Last Modified: Tue, 04 Aug 2026 07:42:54 GMT  
		Size: 9.4 MB (9359970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b31b4ab6304dfe85dc075ebd5867293cbe0bf962d4baca0eb84687b53da162b`  
		Last Modified: Tue, 04 Aug 2026 07:42:54 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db576f58d55658a4a54909f1cb7833ad13c083064aa9f918dbf03585ea190125`  
		Last Modified: Tue, 04 Aug 2026 07:42:54 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-ibmjava-8` - unknown; unknown

```console
$ docker pull maven@sha256:f11b85309f630432ec9bac51463120af0b455866c268d79e97c3364a37bb1682
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3264222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5538f6918a75456ed10c5b4d737f740eb63825bdcbb94c6e42ee7018d5e13e87`

```dockerfile
```

-	Layers:
	-	`sha256:916eb228b5a67eea5abece2ed551458fa17d643dcc4cfa066f21eb749d942254`  
		Last Modified: Tue, 04 Aug 2026 07:42:54 GMT  
		Size: 3.2 MB (3247370 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ba2b8cfb0204028ee9bc610071d7c0e1aeec34f2bc4ae521d475c958705b3f6a`  
		Last Modified: Tue, 04 Aug 2026 07:42:54 GMT  
		Size: 16.9 KB (16852 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-ibmjava-8` - linux; s390x

```console
$ docker pull maven@sha256:f47787a1c03122f96fd4cfe18906431a3d10d2c995c204e12eebf60ee5cbdb7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **210.8 MB (210826069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d380b1148775d630f21102c67734e8d7ff2896a0a920c2b99eb19722192cff1a`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Tue, 18 Aug 2026 00:17:14 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Tue, 18 Aug 2026 00:17:14 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 00:17:14 GMT
ENV JAVA_VERSION=8.0.8.70
# Tue, 18 Aug 2026 00:17:59 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='3dbad870105877617434e8bc7be2f8254de9391add4920347e793aa616aacd00';          YML_FILE='8.0/sdk/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='2fa08a3a0bd0b40ea414d85cbe34691471693ca48b0c9056641eb79b27065cc0';          YML_FILE='8.0/sdk/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='b3cbe10f8eed41d4addec8de004e1a1be50282060b530a302816f57b234929e1';          YML_FILE='8.0/sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Tue, 18 Aug 2026 00:17:59 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Tue, 18 Aug 2026 01:23:06 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:23:06 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 18 Aug 2026 01:23:06 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 18 Aug 2026 01:23:06 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 18 Aug 2026 01:23:06 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 18 Aug 2026 01:23:06 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 18 Aug 2026 01:23:06 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 18 Aug 2026 01:23:06 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 18 Aug 2026 01:23:06 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 18 Aug 2026 01:23:06 GMT
ARG USER_HOME_DIR=/root
# Tue, 18 Aug 2026 01:23:06 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 18 Aug 2026 01:23:06 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 18 Aug 2026 01:23:06 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:3c9503cfff1c82d12820c3c752940964f6a091cb183b44e45fc5a003b8d47e87`  
		Last Modified: Mon, 10 Aug 2026 20:09:16 GMT  
		Size: 28.2 MB (28210903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ce487f4af036e6062c9afd9cfac3679a5fb362a6a7ec741c8ae55190f28a9ab`  
		Last Modified: Tue, 18 Aug 2026 00:18:29 GMT  
		Size: 1.4 MB (1412308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c80ff42fac21867f1f12d4c0fd3b81449e568ee3ab8d507f32225fa589adc6a6`  
		Last Modified: Tue, 18 Aug 2026 00:18:33 GMT  
		Size: 168.8 MB (168781952 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0c1db4db38796a55f0eb74fde78d5c1288bd03e2420cef9c84c0295e2afa996`  
		Last Modified: Tue, 18 Aug 2026 01:23:22 GMT  
		Size: 3.1 MB (3059940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54a483a0256b8e241eaf0445a7b8138a71629135bc5ef7f0753eb0cb99875a0e`  
		Last Modified: Tue, 18 Aug 2026 01:23:23 GMT  
		Size: 9.4 MB (9359959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06b9ccd877d4df09726e5ee0d662c28de35cc075d29e53a06e5f168ef69fa664`  
		Last Modified: Tue, 18 Aug 2026 01:23:22 GMT  
		Size: 852.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afc33891f61ce7a8b4b685ec3b5dfe73d9df6541ff99740df4d94be4d0a954b6`  
		Last Modified: Tue, 18 Aug 2026 01:23:22 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-ibmjava-8` - unknown; unknown

```console
$ docker pull maven@sha256:5233c64dafdb42970b2383ac31bf107d2899f5afd7a9d20a8d6f81054d4f8ded
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2951324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66e6e21283e114975b5dba798d8b41db04e0fb9304ba9ce0906955e9c7f8fb26`

```dockerfile
```

-	Layers:
	-	`sha256:eaafea322a4194f598e4cfc11f99c7754f2dd51b62577c74170ff4a9d357fe19`  
		Last Modified: Tue, 18 Aug 2026 01:23:22 GMT  
		Size: 2.9 MB (2934545 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:671b1195ff1477354ef591ead322d26c5c1a0f556ce300f21b64474052a0abd3`  
		Last Modified: Tue, 18 Aug 2026 01:23:22 GMT  
		Size: 16.8 KB (16779 bytes)  
		MIME: application/vnd.in-toto+json
