## `maven:ibmjava`

```console
$ docker pull maven@sha256:f02e14ba9ac4223e31a70145c76694d093709a38a82b74d62092868223482ea5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `maven:ibmjava` - linux; amd64

```console
$ docker pull maven@sha256:52fb4c64e37675db1a55738225f443bb823ba1ad0acfe8f885559b84b6972fe9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.8 MB (217818977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7af6ac3289e656293a0cbc6886d5a18ed52b4bf59cf86342a076b151c7b82250`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:53 GMT
ADD file:81c01921c5f642ac2fcbfae682e489e8e64b347467d9fa1587707e310e64d790 in / 
# Thu, 03 Sep 2026 12:14:54 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:31:50 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Wed, 09 Sep 2026 02:31:50 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:31:50 GMT
ENV JAVA_VERSION=8.0.8.71
# Wed, 09 Sep 2026 02:32:40 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='bf96528c4be42e2fc4520e3e0ef32ec9ccd6fb3492aea2cded29fe39ec1ea503';          YML_FILE='8.0/sdk/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='946f8e56cc033e8b964da34c5554fa6b50b66a0a220699b5dfb436f780c192eb';          YML_FILE='8.0/sdk/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='3cb2cb64591dd4c438bed7cf5c5a5368b6b5a390bebb95828323947e5a7a91c1';          YML_FILE='8.0/sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Wed, 09 Sep 2026 02:32:40 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Sat, 26 Sep 2026 00:21:59 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 26 Sep 2026 00:21:59 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Sat, 26 Sep 2026 00:21:59 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Sat, 26 Sep 2026 00:21:59 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Sat, 26 Sep 2026 00:21:59 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Sat, 26 Sep 2026 00:21:59 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 26 Sep 2026 00:21:59 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Sat, 26 Sep 2026 00:21:59 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Sat, 26 Sep 2026 00:21:59 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Sat, 26 Sep 2026 00:21:59 GMT
ARG USER_HOME_DIR=/root
# Sat, 26 Sep 2026 00:21:59 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 26 Sep 2026 00:21:59 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 26 Sep 2026 00:21:59 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:768042c976768983a387dfe4ebe1172993c8ea134449dbe53940174cc8d82e99`  
		Last Modified: Wed, 09 Sep 2026 02:32:54 GMT  
		Size: 1.4 MB (1409317 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbd77770068298b012a453423720d26a738f9bd2d1d48f10fb6b219339050067`  
		Last Modified: Wed, 09 Sep 2026 02:32:58 GMT  
		Size: 174.2 MB (174176744 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e841d3684b2576ab6064ba3245fa19c99c8a282cf7d33a169062c2b9675fea03`  
		Last Modified: Sat, 26 Sep 2026 00:22:08 GMT  
		Size: 3.1 MB (3121693 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed629713a61097a4d8af35dee15b491def16fd171551fb11c795ba66630d1a25`  
		Last Modified: Sat, 26 Sep 2026 00:22:08 GMT  
		Size: 9.4 MB (9359965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5705768621413d0831aa9f3e2a89ad5032371963350cb6f44fa9162ce8bd6f9d`  
		Last Modified: Sat, 26 Sep 2026 00:22:08 GMT  
		Size: 852.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27d15d667ee277a4cd572864c4a8495c29585eaf0c6ef9f09e71a5a282a768dc`  
		Last Modified: Sat, 26 Sep 2026 00:22:08 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:ibmjava` - unknown; unknown

```console
$ docker pull maven@sha256:da6ce86dc31b78f19b2e000a9589f6c4d77f0db3547cdb91eb4b189ce1c0af62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3278077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa59397f9297678dd119ca43399f9c588cf1d933e5f7961af8604858d0d74d8a`

```dockerfile
```

-	Layers:
	-	`sha256:8ff94ed1dfd86e259063441ed4aae283d1ecdd024f05c512e577b3a78df6e103`  
		Last Modified: Sat, 26 Sep 2026 00:22:08 GMT  
		Size: 3.3 MB (3261299 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f9b51b53b5e68c29f791a7e953c1feb4cee381f3d30d0ee39e1ab304193a9f1d`  
		Last Modified: Sat, 26 Sep 2026 00:22:08 GMT  
		Size: 16.8 KB (16778 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:ibmjava` - linux; ppc64le

```console
$ docker pull maven@sha256:a98f5a766ce9eb045d503b79a90343f85ce815d5c49925179165b144c0b3d90e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.5 MB (224450476 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de0f6d90f0b5e9e14eb0ee42dcaaf84fbf5dda787e9de4b24d0ecd2a34a7a303`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 03 Sep 2026 12:57:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:57:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:57:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:57:55 GMT
ADD file:432b9684ec0569be2be149e91ac77c16c05d7cfbb3e9cfbb7fd24d3ec4e3542c in / 
# Thu, 03 Sep 2026 12:57:55 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:46:37 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Wed, 09 Sep 2026 02:46:37 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:46:37 GMT
ENV JAVA_VERSION=8.0.8.71
# Wed, 09 Sep 2026 04:12:07 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='bf96528c4be42e2fc4520e3e0ef32ec9ccd6fb3492aea2cded29fe39ec1ea503';          YML_FILE='8.0/sdk/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='946f8e56cc033e8b964da34c5554fa6b50b66a0a220699b5dfb436f780c192eb';          YML_FILE='8.0/sdk/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='3cb2cb64591dd4c438bed7cf5c5a5368b6b5a390bebb95828323947e5a7a91c1';          YML_FILE='8.0/sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Wed, 09 Sep 2026 04:12:07 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Wed, 09 Sep 2026 12:15:04 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 12:15:05 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 09 Sep 2026 12:15:05 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 09 Sep 2026 12:15:05 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 09 Sep 2026 12:15:05 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 09 Sep 2026 12:15:05 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 09 Sep 2026 12:15:05 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 09 Sep 2026 12:15:05 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 09 Sep 2026 12:15:06 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 09 Sep 2026 12:15:06 GMT
ARG USER_HOME_DIR=/root
# Wed, 09 Sep 2026 12:15:06 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 09 Sep 2026 12:15:06 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 09 Sep 2026 12:15:06 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:1daec8f2ab5d99d77bf244f97fe9410551460a2a58e0b0cc7ecb9e6e4bf02aec`  
		Last Modified: Thu, 03 Sep 2026 17:08:41 GMT  
		Size: 34.7 MB (34702679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e5b45737f938f2a8e4b0112fc123c0eeba7bc0b15f6ede392ac9a982fbaeee2`  
		Last Modified: Wed, 09 Sep 2026 02:48:00 GMT  
		Size: 1.5 MB (1494836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:928ee8e3556363dd91ea7eb64024ab542a4943f50ae9a18e6b3986eb02d2f6db`  
		Last Modified: Wed, 09 Sep 2026 04:13:38 GMT  
		Size: 175.0 MB (174958680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da2a06fbc1e7277fd77d13e6a7ebca9de22b7b795365c43f716cff2f53866731`  
		Last Modified: Wed, 09 Sep 2026 12:15:28 GMT  
		Size: 3.9 MB (3933322 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79ecfcc880bfccb02514658fabf50dacf253668cec0af0cf396528dfbd842ee0`  
		Last Modified: Wed, 09 Sep 2026 12:15:28 GMT  
		Size: 9.4 MB (9359950 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fa8ead664a43a1971d94c233180a7e837619ae94d5ecd8ee19835c189b9accb`  
		Last Modified: Wed, 09 Sep 2026 12:15:28 GMT  
		Size: 853.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8132756cba65fc82d5efddb4dd7fed328476badc2357db72cd3bcae14cbc9cd`  
		Last Modified: Wed, 09 Sep 2026 12:15:28 GMT  
		Size: 156.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:ibmjava` - unknown; unknown

```console
$ docker pull maven@sha256:4d9f8073afd684fee36fd7fe94075c24eaf9cdc0e0838bc69c84725e79cbb32b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3264263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11117cf0d5fd46989b771de6d4aea21f841a7f875e6595c39a9e9425f667afcb`

```dockerfile
```

-	Layers:
	-	`sha256:c5e1d5f5e457a1a49a147849f93b54dc5587d5b84d1d9650df4c30032c6e1b3f`  
		Last Modified: Wed, 16 Sep 2026 11:50:14 GMT  
		Size: 3.2 MB (3247410 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:139bbba6581a438b9e66d3c7d7fc53129a454a0cf01c5b65388d80663a12c31b`  
		Last Modified: Wed, 16 Sep 2026 11:50:13 GMT  
		Size: 16.9 KB (16853 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:ibmjava` - linux; s390x

```console
$ docker pull maven@sha256:65b68432c1b8efcedb8f755d9e3579e163e065c74c4b75408b0bfb6d2470bce1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **210.8 MB (210778091 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdc7a08cf3fc7d2980af62337f4fc6834b185d48759961b91f8d8e6d586cfcc2`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 03 Sep 2026 12:51:36 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:51:36 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:51:36 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:51:37 GMT
ADD file:99e519ce4f36973ccf0c2b59d97d9545ed489aeb70f2d9d5b02cc88216f15ebf in / 
# Thu, 03 Sep 2026 12:51:37 GMT
CMD ["/bin/bash"]
# Thu, 17 Sep 2026 23:55:00 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Thu, 17 Sep 2026 23:55:00 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 17 Sep 2026 23:55:00 GMT
ENV JAVA_VERSION=8.0.8.71
# Thu, 17 Sep 2026 23:56:24 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='bf96528c4be42e2fc4520e3e0ef32ec9ccd6fb3492aea2cded29fe39ec1ea503';          YML_FILE='8.0/sdk/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='946f8e56cc033e8b964da34c5554fa6b50b66a0a220699b5dfb436f780c192eb';          YML_FILE='8.0/sdk/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='3cb2cb64591dd4c438bed7cf5c5a5368b6b5a390bebb95828323947e5a7a91c1';          YML_FILE='8.0/sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Thu, 17 Sep 2026 23:56:24 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 25 Sep 2026 23:18:14 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 25 Sep 2026 23:18:14 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 25 Sep 2026 23:18:14 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 25 Sep 2026 23:18:14 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 25 Sep 2026 23:18:14 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 25 Sep 2026 23:18:14 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 25 Sep 2026 23:18:14 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 25 Sep 2026 23:18:14 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 25 Sep 2026 23:18:14 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 25 Sep 2026 23:18:14 GMT
ARG USER_HOME_DIR=/root
# Fri, 25 Sep 2026 23:18:14 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 25 Sep 2026 23:18:14 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 25 Sep 2026 23:18:14 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:bf614dfe039d307c4291b9fb2c2a7e4330436f31d1af87cc6008eaf4ab48b571`  
		Last Modified: Thu, 03 Sep 2026 17:08:55 GMT  
		Size: 28.2 MB (28224031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd2de8f5e65ebe450606447bbc50560d80a886ffed3b63f8338f39c7dd80235f`  
		Last Modified: Thu, 17 Sep 2026 23:55:57 GMT  
		Size: 1.4 MB (1414651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09ec394e39c9e430e746c2665ddc17906cdacea5998c808a704fa603414c161d`  
		Last Modified: Thu, 17 Sep 2026 23:56:48 GMT  
		Size: 168.7 MB (168713664 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34ce6a4be3dd1be4054b9098bbf022f1f0ad8131cf535b89e5a40737cf21ac35`  
		Last Modified: Fri, 25 Sep 2026 23:18:29 GMT  
		Size: 3.1 MB (3064768 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13477ec04a31b290f7437ae9d189ee339be69f849add836f122622148efafa52`  
		Last Modified: Fri, 25 Sep 2026 23:18:29 GMT  
		Size: 9.4 MB (9359971 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bf3755f7286bc7e0ab04cbcb783dd47dec5fad6f8933a47bf7101e411a23d27`  
		Last Modified: Fri, 25 Sep 2026 23:18:29 GMT  
		Size: 852.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10856dd3982a8e8079c2235bd08c4f7d95e5bb38c3b95d734963d04594f27943`  
		Last Modified: Fri, 25 Sep 2026 23:18:29 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:ibmjava` - unknown; unknown

```console
$ docker pull maven@sha256:613ac7ea79ee7ff6d82d28a363f37da9f278f0cd4e8b06b68a126172eaac073f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2951364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:621345b3cdd4837644fce5f3e9f2adfc866864c21e30229213f26d042383cf87`

```dockerfile
```

-	Layers:
	-	`sha256:9dea15424533dba74ec12a7e8ffe8febd42b5bf0dc51d5d19e2cd85d99e65ed4`  
		Last Modified: Fri, 25 Sep 2026 23:18:29 GMT  
		Size: 2.9 MB (2934585 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:81f6b6bc42388862725f87c31ce0f42a34bb3d152cee8b20579cc870cf49a36b`  
		Last Modified: Fri, 25 Sep 2026 23:18:29 GMT  
		Size: 16.8 KB (16779 bytes)  
		MIME: application/vnd.in-toto+json
