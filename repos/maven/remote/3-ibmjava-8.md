## `maven:3-ibmjava-8`

```console
$ docker pull maven@sha256:214bf03c2ed9e281e0dea8b18b5c3af2441189fc3014618928d6d66ebe9a2cd5
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
$ docker pull maven@sha256:7b4439d5cea73cba55987c3c4e5ea4a4d0f8eac65ab4fd2790de8d27748f6cc9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.5 MB (218519554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24accb62edb9ee3eda9718cf0b680a3887c249e71b0312385638ee2d3c7d9398`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:04 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:04 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:06 GMT
ADD file:b0bf3f64519bf10a51e00d4f8ab9c8693620659a0c4a4a5090a9765e754e1d1c in / 
# Thu, 24 Sep 2026 22:24:07 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:29:19 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Fri, 02 Oct 2026 01:29:19 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:29:19 GMT
ENV JAVA_VERSION=8.0.8.71
# Fri, 02 Oct 2026 01:30:45 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='bf96528c4be42e2fc4520e3e0ef32ec9ccd6fb3492aea2cded29fe39ec1ea503';          YML_FILE='8.0/sdk/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='946f8e56cc033e8b964da34c5554fa6b50b66a0a220699b5dfb436f780c192eb';          YML_FILE='8.0/sdk/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='3cb2cb64591dd4c438bed7cf5c5a5368b6b5a390bebb95828323947e5a7a91c1';          YML_FILE='8.0/sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Fri, 02 Oct 2026 01:30:45 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 02 Oct 2026 03:38:53 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 03:38:53 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 02 Oct 2026 03:38:53 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 02 Oct 2026 03:38:53 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 02 Oct 2026 03:38:53 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 02 Oct 2026 03:38:53 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 02 Oct 2026 03:38:53 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 02 Oct 2026 03:38:53 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 02 Oct 2026 03:38:53 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 02 Oct 2026 03:38:53 GMT
ARG USER_HOME_DIR=/root
# Fri, 02 Oct 2026 03:38:53 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 02 Oct 2026 03:38:53 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 02 Oct 2026 03:38:53 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e759b58b736eaceab87043edd7dd3b0ab4b1448ee3f54d321daa0d68f9d9293`  
		Last Modified: Fri, 02 Oct 2026 01:31:00 GMT  
		Size: 1.4 MB (1409438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae6f968de2882644c31dc38afbda245f967a302b796dea474c569403aae7ebc8`  
		Last Modified: Fri, 02 Oct 2026 01:31:04 GMT  
		Size: 174.2 MB (174176778 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca7a6f96613906ee68499391538ff68551c90bffc9420a8775f6be85fb0090f9`  
		Last Modified: Fri, 02 Oct 2026 03:39:03 GMT  
		Size: 3.1 MB (3121703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f591b3b5532b600faf491b596521530b59926cff9d68ede64389d751438af627`  
		Last Modified: Fri, 02 Oct 2026 03:39:03 GMT  
		Size: 10.1 MB (10059004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da1231aadeb644dee5e8b04fe9a6d7759dda16b9897c9eaee52e0acf270c6ec3`  
		Last Modified: Fri, 02 Oct 2026 03:39:03 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbc900a274aa20204374ef0fa944e5d8384daa25df0cf0a08af7cb5b57171ab2`  
		Last Modified: Fri, 02 Oct 2026 03:39:03 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-ibmjava-8` - unknown; unknown

```console
$ docker pull maven@sha256:99369578ee6a285a168f3961aae6aacc5c040afb3b5d402c21737ecff4ed2eab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3285067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d38103e9a6a46d8a239e4c02d51c6acd8b969b8be45e95fc0c82e492c30ae81d`

```dockerfile
```

-	Layers:
	-	`sha256:92f1f28fcacd943f34b51db2ae458fb6931dc8c9762335b947c4f26a90823552`  
		Last Modified: Fri, 02 Oct 2026 03:39:03 GMT  
		Size: 3.3 MB (3268282 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e252656ae98bcd7c6f145d4e5ed7fee3a52b4c83061c838a493f7d31345a5c60`  
		Last Modified: Fri, 02 Oct 2026 03:39:03 GMT  
		Size: 16.8 KB (16785 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-ibmjava-8` - linux; ppc64le

```console
$ docker pull maven@sha256:6ae72b485497e8f1dd1e00bcc2e360f8bba412b99b12ee2b4703f32e66504cef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **225.2 MB (225151234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12805eff48647d55aa2011861499636d92e4b781a3e74e01565fc9111d665945`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:59 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:59 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:59 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:25:02 GMT
ADD file:045fd400d3feed52639c1d69b89f522795380adacf8a6025e5d8b200e9a878dc in / 
# Thu, 24 Sep 2026 22:25:03 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 04:42:56 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Fri, 02 Oct 2026 04:42:56 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 04:42:56 GMT
ENV JAVA_VERSION=8.0.8.71
# Fri, 02 Oct 2026 04:45:20 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='bf96528c4be42e2fc4520e3e0ef32ec9ccd6fb3492aea2cded29fe39ec1ea503';          YML_FILE='8.0/sdk/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='946f8e56cc033e8b964da34c5554fa6b50b66a0a220699b5dfb436f780c192eb';          YML_FILE='8.0/sdk/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='3cb2cb64591dd4c438bed7cf5c5a5368b6b5a390bebb95828323947e5a7a91c1';          YML_FILE='8.0/sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Fri, 02 Oct 2026 04:45:20 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 02 Oct 2026 12:22:13 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 12:22:15 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 02 Oct 2026 12:22:15 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 02 Oct 2026 12:22:15 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 02 Oct 2026 12:22:15 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 02 Oct 2026 12:22:15 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 02 Oct 2026 12:22:15 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 02 Oct 2026 12:22:18 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 02 Oct 2026 12:22:20 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 02 Oct 2026 12:22:20 GMT
ARG USER_HOME_DIR=/root
# Fri, 02 Oct 2026 12:22:20 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 02 Oct 2026 12:22:20 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 02 Oct 2026 12:22:20 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:4ec38ea96fb6e9976b5659ce60f9385aeabcf358353540676f8685df8f5439db`  
		Last Modified: Thu, 24 Sep 2026 23:36:25 GMT  
		Size: 34.7 MB (34703208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0a08bb3edc216d35dfae04f6b215c048e8b2ca59322190e68630a3f282f4939`  
		Last Modified: Fri, 02 Oct 2026 04:44:11 GMT  
		Size: 1.5 MB (1495139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adba71863700e01d031da5f401bcfed2a63ba8cab754d0c110f7bb77897e2f38`  
		Last Modified: Fri, 02 Oct 2026 04:45:59 GMT  
		Size: 175.0 MB (174958648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c09eb5a54453009c63a9a54fc81b8982bd6ae3490dd6c72e12ea2d2a8b525b44`  
		Last Modified: Fri, 02 Oct 2026 12:22:50 GMT  
		Size: 3.9 MB (3934216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ef92a1604f432ef9f01fe2df4755248c789785b2c84559511310c405f98ba04`  
		Last Modified: Fri, 02 Oct 2026 12:22:50 GMT  
		Size: 10.1 MB (10059017 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:674a205a3faa8636409ee51219090cf531ec2f67c52b51723774df56d1043eea`  
		Last Modified: Fri, 02 Oct 2026 12:22:50 GMT  
		Size: 852.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e88edcf619fefd18a95815962c588ee8af1d25dec359212f1550bd282c7c10f2`  
		Last Modified: Fri, 02 Oct 2026 12:22:50 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-ibmjava-8` - unknown; unknown

```console
$ docker pull maven@sha256:5a117149740864c5623e47b5016b8ecd74b6e7ca3a026a4a7c19b6477c333069
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3271254 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:594b972dcf62cd19c3c43f220217110ff543fd3f1f342b24cef5667ad380bd69`

```dockerfile
```

-	Layers:
	-	`sha256:ff29ec06444ded55799ba78023391b6bbdac401ded837f2edc252c2c79386ff3`  
		Last Modified: Fri, 02 Oct 2026 12:22:50 GMT  
		Size: 3.3 MB (3254393 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:db5019fa8d8638746517c5e4b180565feb402effd324843b0ff1a654b3adda92`  
		Last Modified: Fri, 02 Oct 2026 12:22:49 GMT  
		Size: 16.9 KB (16861 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-ibmjava-8` - linux; s390x

```console
$ docker pull maven@sha256:dde8e7e36e93d02437d912935dd7fb76d96af44a224f8c30d0c38df676571dc7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.5 MB (211471208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33a65f72a89327b9523e560f1386aede561839f7eb11176376e5685d82da0793`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:54 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:55 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:55 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:56 GMT
ADD file:db47e3926ab7bde0eac1956f72b5e29cdfee4e7ba1a182277e89477759e0044a in / 
# Thu, 24 Sep 2026 22:24:56 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 02:04:02 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Fri, 02 Oct 2026 02:04:02 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 02:04:02 GMT
ENV JAVA_VERSION=8.0.8.71
# Fri, 02 Oct 2026 02:06:06 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='bf96528c4be42e2fc4520e3e0ef32ec9ccd6fb3492aea2cded29fe39ec1ea503';          YML_FILE='8.0/sdk/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='946f8e56cc033e8b964da34c5554fa6b50b66a0a220699b5dfb436f780c192eb';          YML_FILE='8.0/sdk/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='3cb2cb64591dd4c438bed7cf5c5a5368b6b5a390bebb95828323947e5a7a91c1';          YML_FILE='8.0/sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Fri, 02 Oct 2026 02:06:06 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 02 Oct 2026 03:55:36 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 03:55:36 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 02 Oct 2026 03:55:36 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 02 Oct 2026 03:55:36 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 02 Oct 2026 03:55:36 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 02 Oct 2026 03:55:36 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 02 Oct 2026 03:55:36 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 02 Oct 2026 03:55:36 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 02 Oct 2026 03:55:36 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 02 Oct 2026 03:55:36 GMT
ARG USER_HOME_DIR=/root
# Fri, 02 Oct 2026 03:55:36 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 02 Oct 2026 03:55:36 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 02 Oct 2026 03:55:36 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:e1502cdfd138d89dddc82531455ad8426a7eaa0d843665253c16b88cb6870c91`  
		Last Modified: Thu, 24 Sep 2026 23:36:39 GMT  
		Size: 28.2 MB (28222068 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f0db7384dad11d88c451eb881ae35001ae2d5c471de779a867fb10a38c676be`  
		Last Modified: Fri, 02 Oct 2026 02:05:07 GMT  
		Size: 1.4 MB (1412754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed56f0fc758c3d098f7c9c0163b85448d984012090a66fca04b34f21540cdae1`  
		Last Modified: Fri, 02 Oct 2026 02:06:40 GMT  
		Size: 168.7 MB (168713658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c82d662b9d3ef32612b08829b9a981a9ca9537f3360176d4b8a133c32f1fe92`  
		Last Modified: Fri, 02 Oct 2026 03:55:57 GMT  
		Size: 3.1 MB (3062728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da53daca57d92cfdad93077b21371a7a99d29ad4200aa0b81e29038337d586b3`  
		Last Modified: Fri, 02 Oct 2026 03:55:58 GMT  
		Size: 10.1 MB (10058997 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0985408162e94ebf73de8075f9b5bac33bbc77149e1f201c4b99cbb56f36960`  
		Last Modified: Fri, 02 Oct 2026 03:55:57 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e065821fbf00fb221c3a510a65a398edc9620f29f6185cd2bb8e9f3d6754f3b`  
		Last Modified: Fri, 02 Oct 2026 03:55:57 GMT  
		Size: 153.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-ibmjava-8` - unknown; unknown

```console
$ docker pull maven@sha256:85cf400421dc86fda03c409644e6c33f157e993d254c0487949efe4a2467a4b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2958355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9ab2e5262c6d48be707cdd01ae04bfe3bdcf9ed1a43baec0aa6f375c0648ee4`

```dockerfile
```

-	Layers:
	-	`sha256:6328ef2cffd687326a11ab34471017c59c943d27bc2ffd7cc81ed397e26579ee`  
		Last Modified: Fri, 02 Oct 2026 03:55:57 GMT  
		Size: 2.9 MB (2941568 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:37ab03516b6ae1003a88ba1360a75785150ed8b3745748ac3485816c7e28601e`  
		Last Modified: Fri, 02 Oct 2026 03:55:57 GMT  
		Size: 16.8 KB (16787 bytes)  
		MIME: application/vnd.in-toto+json
