## `maven:3-ibmjava-8`

```console
$ docker pull maven@sha256:86afb6a3c04b0e55c148c7c859ebe30f10f046e74be60a42c2920fc1cf3a62f6
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
$ docker pull maven@sha256:6b96a5b0d9ea827deecc070ae7847056eadb7aa6aa543e21d0a902cae6b479e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.1 MB (217146774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5c3155113af55b1e8c4756dd0873e0847af5b96fa4eb53cdca27187645f54ea`
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
# Thu, 02 Jul 2026 02:29:20 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Thu, 02 Jul 2026 02:29:20 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:29:20 GMT
ENV JAVA_VERSION=8.0.8.65
# Thu, 02 Jul 2026 02:29:28 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='0978a87ce0b78bf6530fe5b9bd9fb737ff04ecc8dae1c849cb1c42908b1095a8';          YML_FILE='8.0/sdk/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='731c2693424a66054fcc45624c411461ea8a62efd898a90f508bdbd20c0b6125';          YML_FILE='8.0/sdk/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='8a1cfafb51e8cf4753df40fb9906d3571ae086ed33b1bbcf807c416beac37521';          YML_FILE='8.0/sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Thu, 02 Jul 2026 02:29:28 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Thu, 02 Jul 2026 06:43:41 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 06:43:41 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 02 Jul 2026 06:43:41 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 02 Jul 2026 06:43:41 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 02 Jul 2026 06:43:41 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 02 Jul 2026 06:43:41 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 02 Jul 2026 06:43:41 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 02 Jul 2026 06:43:41 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 02 Jul 2026 06:43:41 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 02 Jul 2026 06:43:41 GMT
ARG USER_HOME_DIR=/root
# Thu, 02 Jul 2026 06:43:41 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 02 Jul 2026 06:43:41 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 02 Jul 2026 06:43:41 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f340a4730470746248dfdc6d3c07f8c990c063b6ee730ea05ca791011753d20`  
		Last Modified: Thu, 02 Jul 2026 02:29:44 GMT  
		Size: 1.4 MB (1408642 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7b1f69b95ee18be9c0f6d86ae057d71d347f9a0097f08c2c47b39e37b7f02bb`  
		Last Modified: Thu, 02 Jul 2026 02:29:50 GMT  
		Size: 173.5 MB (173521364 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62b324cafcc5548bc5e0313dd89be7ed931ef642597c168f6126ae641ac46e4e`  
		Last Modified: Thu, 02 Jul 2026 06:43:51 GMT  
		Size: 3.1 MB (3116908 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01e54d61709ba27001a2da981382f44b9e76bf37fafb39541afee72485014e55`  
		Last Modified: Thu, 02 Jul 2026 06:43:51 GMT  
		Size: 9.4 MB (9359972 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:900fe8b3b9dde0e01f0f74c62461d5bcc326c98d93dde0a60668fa3c2abcd6c4`  
		Last Modified: Thu, 02 Jul 2026 06:43:50 GMT  
		Size: 852.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca89e39adc0bf167d6d4649f2e5b3cea89fbcb37abc7a43679bfebd7fccc5aa2`  
		Last Modified: Thu, 02 Jul 2026 06:43:50 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-ibmjava-8` - unknown; unknown

```console
$ docker pull maven@sha256:9b94467a4c3763b6d6948b14af607c8adb1efac14bc95f9a2a648b3b3b21be2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3278002 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6fce6e2fd612c556324e64c9c44d4e20c534ccaefd69895c1c1fab497f3d899`

```dockerfile
```

-	Layers:
	-	`sha256:a45552d3a562311c9343c104057068f36256ad60c669804ad3b5e35cf9a92798`  
		Last Modified: Thu, 02 Jul 2026 06:43:50 GMT  
		Size: 3.3 MB (3261223 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c00b1b6edfea9c3180b5dc2de8ff41c04665f240b4f987f2821ecc9c9b78003b`  
		Last Modified: Thu, 02 Jul 2026 06:43:50 GMT  
		Size: 16.8 KB (16779 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-ibmjava-8` - linux; ppc64le

```console
$ docker pull maven@sha256:73c58520269715089900856417e67b18d6acc54aea8780c4a9b7a2fb4c293a07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.1 MB (224072432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ca0a15ed267355fb3ce61afcccf966510f5ca28c2416636b2b18e1c26d7bb88`
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
# Thu, 02 Jul 2026 02:50:25 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Thu, 02 Jul 2026 02:50:25 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:50:25 GMT
ENV JAVA_VERSION=8.0.8.65
# Thu, 02 Jul 2026 02:51:26 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='0978a87ce0b78bf6530fe5b9bd9fb737ff04ecc8dae1c849cb1c42908b1095a8';          YML_FILE='8.0/sdk/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='731c2693424a66054fcc45624c411461ea8a62efd898a90f508bdbd20c0b6125';          YML_FILE='8.0/sdk/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='8a1cfafb51e8cf4753df40fb9906d3571ae086ed33b1bbcf807c416beac37521';          YML_FILE='8.0/sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Thu, 02 Jul 2026 02:51:26 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Thu, 02 Jul 2026 10:00:48 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 10:00:49 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 02 Jul 2026 10:00:49 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 02 Jul 2026 10:00:49 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 02 Jul 2026 10:00:49 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 02 Jul 2026 10:00:49 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 02 Jul 2026 10:00:49 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 02 Jul 2026 10:00:49 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 02 Jul 2026 10:00:49 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 02 Jul 2026 10:00:49 GMT
ARG USER_HOME_DIR=/root
# Thu, 02 Jul 2026 10:00:49 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 02 Jul 2026 10:00:49 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 02 Jul 2026 10:00:49 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:cf87e8e9427654cae1c380a7eb2a10971210431259802390d53728f83afd8afa`  
		Last Modified: Mon, 29 Jun 2026 11:25:41 GMT  
		Size: 34.6 MB (34641868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1256969b7c1e96f54787e7b97dd1cb6658d9e379228928e5cd9506c8eebd2af`  
		Last Modified: Thu, 02 Jul 2026 02:51:01 GMT  
		Size: 1.5 MB (1494121 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b21e351f77fa418822dccbacc4477311b691f3c7758b1724479d7a097434c907`  
		Last Modified: Thu, 02 Jul 2026 02:52:20 GMT  
		Size: 174.6 MB (174645013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf8c3b6bd7b647bf6c32edc8d11a9a3f5acae9b031f28411d4a806e6e20e3631`  
		Last Modified: Thu, 02 Jul 2026 10:01:23 GMT  
		Size: 3.9 MB (3930475 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19e9185dfa9daaca1573090e0336bb712218a71c58c2cad84a0e6949348472d8`  
		Last Modified: Thu, 02 Jul 2026 10:01:23 GMT  
		Size: 9.4 MB (9359946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01a418a15de3f823df9baf343b7860bfd8b7c32193ee69cf69e1cbaa2c178265`  
		Last Modified: Thu, 02 Jul 2026 10:01:23 GMT  
		Size: 852.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a6557b337883aae24a8ae4c2a3de6f05a550464880e4ca61e2b970465cc4c11`  
		Last Modified: Thu, 02 Jul 2026 10:01:23 GMT  
		Size: 157.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-ibmjava-8` - unknown; unknown

```console
$ docker pull maven@sha256:e5dd80043a920f3d5f35365b317645a1f92ea5225c553c0cd152263fd3d976a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3264187 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f52f73d8e32632317503939478184c2dadbfb28a049ba7f1d3e4d68dfe74f6fe`

```dockerfile
```

-	Layers:
	-	`sha256:1dce045cb719b40403565e54c5965f85058e30b2fb4a4e8b9b543329b75e4982`  
		Last Modified: Thu, 02 Jul 2026 10:01:23 GMT  
		Size: 3.2 MB (3247334 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8ee0cb0d209d865382efbc2e4b34776cbc648d46e4cdcc86f420ec97d4cf88c8`  
		Last Modified: Thu, 02 Jul 2026 10:01:22 GMT  
		Size: 16.9 KB (16853 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-ibmjava-8` - linux; s390x

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

### `maven:3-ibmjava-8` - unknown; unknown

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
