## `maven:3-ibmjava`

```console
$ docker pull maven@sha256:bb910c5bc1d6065c04e1a76d43c33b6193f9ee02c624d7aca664bedc108acc4b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `maven:3-ibmjava` - linux; amd64

```console
$ docker pull maven@sha256:54fe2cb97983d5a0ac357cd09e1b61ae9f813acca8dceeb5d8132905883c51e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.9 MB (217880346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56ed2281b66c03efcd6670b9d15cd581644c6934b9eb916949f54cf0f279b66c`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Tue, 28 Jul 2026 21:16:34 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 28 Jul 2026 21:16:34 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 28 Jul 2026 21:16:34 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 28 Jul 2026 21:16:34 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 28 Jul 2026 21:16:34 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 28 Jul 2026 21:16:34 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 28 Jul 2026 21:16:34 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 28 Jul 2026 21:16:35 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 28 Jul 2026 21:16:35 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 28 Jul 2026 21:16:35 GMT
ARG USER_HOME_DIR=/root
# Tue, 28 Jul 2026 21:16:35 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 28 Jul 2026 21:16:35 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 28 Jul 2026 21:16:35 GMT
CMD ["mvn"]
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
	-	`sha256:9662dd29e19b103e141643e5345c64b1ac70bdb997514ec0793328c44a4e57b4`  
		Last Modified: Tue, 28 Jul 2026 21:16:45 GMT  
		Size: 3.1 MB (3118002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8a24e2fab9485dcd8b2ac57557fccc5a7202dd891cd3312b900b9a4a4039636`  
		Last Modified: Tue, 28 Jul 2026 21:16:45 GMT  
		Size: 9.4 MB (9359975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:554e2be1b7c5c013e9b954699dd0eed8596eca99ce5895100d7cbce4a31e2001`  
		Last Modified: Tue, 28 Jul 2026 21:16:45 GMT  
		Size: 854.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51b8371c335cd74d9e4b25b063fc37ffa0703a40a9d0e4081e838e064b860367`  
		Last Modified: Tue, 28 Jul 2026 21:16:45 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-ibmjava` - unknown; unknown

```console
$ docker pull maven@sha256:b71f793277ce1620f883e80ddc7a1d2ba46d45312ec3d2c11720f2c8ab1924bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3278038 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad906059effec2b707c2b8c90c7501daf87733b91843151aedbea3a34f3ca1c8`

```dockerfile
```

-	Layers:
	-	`sha256:445f1edcfdd7969ae46fbf4efed7413208e31b4375e916d7defe0c92472f81f8`  
		Last Modified: Tue, 28 Jul 2026 21:16:44 GMT  
		Size: 3.3 MB (3261259 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4b3aeca5398d5b2783a04633ad5db3ad6707ff7a9aab037b84aa9cd61e1c4e30`  
		Last Modified: Tue, 28 Jul 2026 21:16:44 GMT  
		Size: 16.8 KB (16779 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-ibmjava` - linux; ppc64le

```console
$ docker pull maven@sha256:a8901718fd03b491850860beec2fff1f4ff3f1fb62d00f10ac077ed3a169961a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.5 MB (224455828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d293304f4767abbe2e6145eca2219e723de87c3c9177ea2bcec6db218c12f73`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Tue, 28 Jul 2026 21:37:41 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 28 Jul 2026 21:37:42 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 28 Jul 2026 21:37:42 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 28 Jul 2026 21:37:42 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 28 Jul 2026 21:37:42 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 28 Jul 2026 21:37:42 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 28 Jul 2026 21:37:42 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 28 Jul 2026 21:37:42 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 28 Jul 2026 21:37:42 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 28 Jul 2026 21:37:42 GMT
ARG USER_HOME_DIR=/root
# Tue, 28 Jul 2026 21:37:42 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 28 Jul 2026 21:37:42 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 28 Jul 2026 21:37:42 GMT
CMD ["mvn"]
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
	-	`sha256:d067c2520666b6c7e40afbafcb326c2c7036715d97e5f2e66a68527f781ef743`  
		Last Modified: Tue, 28 Jul 2026 21:38:02 GMT  
		Size: 3.9 MB (3931471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:320dec99263779fd971a1d5241e177ec8c8c2862485c0c35889f7e2ddf8af850`  
		Last Modified: Tue, 28 Jul 2026 21:38:02 GMT  
		Size: 9.4 MB (9359951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36acf742cdf3ad5ff1fde6435557b56fde0e0dd821449c9a8a0361c9d4c9eb8a`  
		Last Modified: Tue, 28 Jul 2026 21:38:01 GMT  
		Size: 855.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8835f404b838e0dedcb3a4ec34461ecb49edde798cd0618cf672fef3cc42a1ca`  
		Last Modified: Tue, 28 Jul 2026 21:38:02 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-ibmjava` - unknown; unknown

```console
$ docker pull maven@sha256:e1534b4d527b52194dfc459b05c36cde74ea5e3f384a10c3362414f19a89dbb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3264222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba7bdadcfb8ea5b9e50736bdb5d05242a598788b72820526d0a7e63a29ad6fe2`

```dockerfile
```

-	Layers:
	-	`sha256:2b1390c1183d89d6cc729808467a4c2544d3e0bafd95455d8d11a65029bee270`  
		Last Modified: Tue, 28 Jul 2026 21:38:02 GMT  
		Size: 3.2 MB (3247370 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b75293c897ba924372479386431a8ef6ace74562c2020ed90c8cca4c856f5535`  
		Last Modified: Tue, 28 Jul 2026 21:38:01 GMT  
		Size: 16.9 KB (16852 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-ibmjava` - linux; s390x

```console
$ docker pull maven@sha256:560d753d8ab23db50dd1df4a072b6d317a2bf7201e74cc31984c1c36525380aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.2 MB (207205127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05ddb7b5eaf11baed82981202cac872d696fc12683318a77b3d68909921062bd`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Thu, 02 Jul 2026 06:49:04 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 06:49:04 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 02 Jul 2026 06:49:04 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 02 Jul 2026 06:49:04 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 02 Jul 2026 06:49:04 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 02 Jul 2026 06:49:04 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 02 Jul 2026 06:49:04 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 02 Jul 2026 06:49:04 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 02 Jul 2026 06:49:04 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 02 Jul 2026 06:49:04 GMT
ARG USER_HOME_DIR=/root
# Thu, 02 Jul 2026 06:49:04 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 02 Jul 2026 06:49:04 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 02 Jul 2026 06:49:04 GMT
CMD ["mvn"]
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
	-	`sha256:32402f82239c0f271c82c773f612757fa2665c1f98021ff611f66bf5ff1cc053`  
		Last Modified: Thu, 02 Jul 2026 06:49:18 GMT  
		Size: 3.1 MB (3058767 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa8d722f409fdd6e0b2bb48829baf307c5c9e30f5b9c7e45f87d239866953516`  
		Last Modified: Thu, 02 Jul 2026 06:49:18 GMT  
		Size: 9.4 MB (9359955 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb69341c820bb836843192967ec36d29f31a691c7a0ddca9cfb501efcd0ca049`  
		Last Modified: Thu, 02 Jul 2026 06:49:18 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9766b4572de1158b494afcb5614594826fde4a505e42cd18c0291ceda63e2bc8`  
		Last Modified: Thu, 02 Jul 2026 06:49:18 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-ibmjava` - unknown; unknown

```console
$ docker pull maven@sha256:47e28bb42f40fc0f2253dc51b3674fb7a2935db313078cf7c9773d97e6507e39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2951288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccf4b6ee9b4ea5ecc30255fde5c7eeb5de0ec4dcebea429731520cc010cee425`

```dockerfile
```

-	Layers:
	-	`sha256:a3501df12515c79e832a03b5ebd5b320c845d7b7d053c05dc9d604aeb033b0fe`  
		Last Modified: Thu, 02 Jul 2026 06:49:18 GMT  
		Size: 2.9 MB (2934509 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5f0d1f97fd38368b3233e40a124e8e0bbf42097bd7a774efb160d5009aeeaf83`  
		Last Modified: Thu, 02 Jul 2026 06:49:18 GMT  
		Size: 16.8 KB (16779 bytes)  
		MIME: application/vnd.in-toto+json
