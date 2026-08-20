## `maven:3-ibmjava-8`

```console
$ docker pull maven@sha256:5253760df2419ed0e9041226c7c76e9603f7c5e2493e4e8ef7f2fc1011b1fafd
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
$ docker pull maven@sha256:1cf68e7b3ddf2de022a19efaea652d17ffde34325d09e2e055f7c63730dfc6ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.9 MB (217878587 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:481419e12928f73a42cb325f0ea53bd0b7e1ab11622fe338266373ac8603d477`
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
# Tue, 18 Aug 2026 21:25:35 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 21:25:35 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 18 Aug 2026 21:25:35 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 18 Aug 2026 21:25:35 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 18 Aug 2026 21:25:35 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 18 Aug 2026 21:25:35 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 18 Aug 2026 21:25:35 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 18 Aug 2026 21:25:35 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 18 Aug 2026 21:25:35 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 18 Aug 2026 21:25:35 GMT
ARG USER_HOME_DIR=/root
# Tue, 18 Aug 2026 21:25:35 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 18 Aug 2026 21:25:35 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 18 Aug 2026 21:25:35 GMT
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
	-	`sha256:0bed8a0fe1b948b85a8a4244dc263533a229870222d76e74a52ff998cf49de7b`  
		Last Modified: Tue, 18 Aug 2026 21:25:45 GMT  
		Size: 3.1 MB (3118083 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb6f4874c1e815e2458fdcb6ed13880055e20fe7e99b7c8c7fe2618b9dcd8d51`  
		Last Modified: Tue, 18 Aug 2026 21:25:46 GMT  
		Size: 9.4 MB (9359969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e84613b9d4b4b8424381bd18b321d5f261ae912736f8514791cac19dcc523be`  
		Last Modified: Tue, 18 Aug 2026 21:25:45 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75421851aedc01fc60faf9b58937928ac67851fc5c2baacc65c7036c41b33fdc`  
		Last Modified: Tue, 18 Aug 2026 21:25:45 GMT  
		Size: 156.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-ibmjava-8` - unknown; unknown

```console
$ docker pull maven@sha256:22b2622317cd522fd6fad210222da5bfe623608cd24adb9d8739bbf019ecb030
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3278038 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ea09d7dba2a705c7f6c9b19955d7f2957d176bc529d9917ec335c23ad70f31c`

```dockerfile
```

-	Layers:
	-	`sha256:9057f14bc14213a294087c3cd07b4eb9c296b506a7515c207d27cf44658077f7`  
		Last Modified: Tue, 18 Aug 2026 21:25:45 GMT  
		Size: 3.3 MB (3261259 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5bb65a4e946e9ca30dcb531a8d716e4df538b32d94f9fced4ffa1a3b6195a063`  
		Last Modified: Tue, 18 Aug 2026 21:25:45 GMT  
		Size: 16.8 KB (16779 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-ibmjava-8` - linux; ppc64le

```console
$ docker pull maven@sha256:98be523b87428d832d0a43fddf5a8812feed7b8f18c7b2cd996fb2ecb5772ed9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.5 MB (224452696 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fbb0eb9f32a01a768d3345e4942b828ac2c51a1077e788e5a87b241093c83e8`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 10 Aug 2026 17:41:01 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:41:01 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:41:01 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:41:05 GMT
ADD file:d76e60867a1f84b7db03c693179093620dc98a06de4f58fdcc806cfc4e4be11c in / 
# Mon, 10 Aug 2026 17:41:05 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:26:57 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Tue, 18 Aug 2026 01:26:57 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:26:57 GMT
ENV JAVA_VERSION=8.0.8.70
# Tue, 18 Aug 2026 01:28:04 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='3dbad870105877617434e8bc7be2f8254de9391add4920347e793aa616aacd00';          YML_FILE='8.0/sdk/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='2fa08a3a0bd0b40ea414d85cbe34691471693ca48b0c9056641eb79b27065cc0';          YML_FILE='8.0/sdk/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='b3cbe10f8eed41d4addec8de004e1a1be50282060b530a302816f57b234929e1';          YML_FILE='8.0/sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Tue, 18 Aug 2026 01:28:04 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Thu, 20 Aug 2026 03:17:36 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 20 Aug 2026 03:17:37 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 20 Aug 2026 03:17:37 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 20 Aug 2026 03:17:37 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 20 Aug 2026 03:17:37 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 20 Aug 2026 03:17:37 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 20 Aug 2026 03:17:37 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 20 Aug 2026 03:17:37 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 20 Aug 2026 03:17:37 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 20 Aug 2026 03:17:37 GMT
ARG USER_HOME_DIR=/root
# Thu, 20 Aug 2026 03:17:37 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 20 Aug 2026 03:17:37 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 20 Aug 2026 03:17:37 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:f91e00e792a8adfcd4df0b5c8e802d3b4d1e06477f9753454043a7ce76772758`  
		Last Modified: Mon, 10 Aug 2026 20:09:02 GMT  
		Size: 34.6 MB (34638145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91fa2da3cee1dd95a3af2422056b0291654a7a092a03194978b464cb9ec1680e`  
		Last Modified: Tue, 18 Aug 2026 01:27:36 GMT  
		Size: 1.5 MB (1494933 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2c6e4faae564b06499a8f943a07504dd6cac47bba66982f37a51b80b9d3e080`  
		Last Modified: Tue, 18 Aug 2026 01:28:44 GMT  
		Size: 175.0 MB (175026612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f2538c5143aa9387b9f42c2ea73c9d14a5948ecd819344829676a99771086e6`  
		Last Modified: Thu, 20 Aug 2026 03:17:57 GMT  
		Size: 3.9 MB (3932024 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2230dc0a5f538f9df249c8dd8fa2aca1340d8de2bc7ad38ea2a760c892c45617`  
		Last Modified: Thu, 20 Aug 2026 03:17:57 GMT  
		Size: 9.4 MB (9359975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d03177fcf0ec3014db3a577336ba731f4cf905cd876be061dfbabbf6fb1945d5`  
		Last Modified: Thu, 20 Aug 2026 03:17:57 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39d8aca74453763e949a612333e557620c99ac3a308549f0e1c84c241d1954dd`  
		Last Modified: Thu, 20 Aug 2026 03:17:56 GMT  
		Size: 156.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-ibmjava-8` - unknown; unknown

```console
$ docker pull maven@sha256:73f09ca295350d56cf8b643e9a5f4e0cb76a6d37fab45e8f67f45d096d250cf0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3264222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffdc7510d1a89cf234ba9e91f994b4bfbb0de9ed21422bc9f5c087b4711d8b48`

```dockerfile
```

-	Layers:
	-	`sha256:b3e5e14d1fb4e930268c4e60eeaceca14883c063c50c326e0dfb213e3f720cd8`  
		Last Modified: Thu, 20 Aug 2026 03:17:57 GMT  
		Size: 3.2 MB (3247370 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7c0d00f4a4664d3094c4770d1bde2d0110e0c229cdb0a375a7e27c96e3ee813b`  
		Last Modified: Thu, 20 Aug 2026 03:17:56 GMT  
		Size: 16.9 KB (16852 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-ibmjava-8` - linux; s390x

```console
$ docker pull maven@sha256:933a3bda6a8d8058cbcc2e33fa6c703d06290633d6a1617a2647e20b8ef1bec7
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
$ docker pull maven@sha256:dc2c69ff98bb385798d362a207a62e8505afd47168d2cb97959f97503bcbfa08
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2949744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32d25cc5852f9336ff66c89438d51cbf87a93f4741696b7b5779591c512b4262`

```dockerfile
```

-	Layers:
	-	`sha256:68ee2e4fc71ee8a17672844bd7dc6d5b642d6ca4a75631b6fc9d996b4dcd1683`  
		Last Modified: Tue, 18 Aug 2026 21:29:46 GMT  
		Size: 2.9 MB (2934545 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:49c9636b9540692d49b0e4f98890703162c588ea63a5045a8c6064d9e753f8b9`  
		Last Modified: Tue, 18 Aug 2026 21:29:46 GMT  
		Size: 15.2 KB (15199 bytes)  
		MIME: application/vnd.in-toto+json
