## `maven:3-ibmjava`

```console
$ docker pull maven@sha256:28889fe03a0dedcea8378c88c7f516f41ed2d72966caa4e0e0f5d8c53163ed0e
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
$ docker pull maven@sha256:92fae90ed0db20c43380101c8bf7d28432b200a94e6863451cf423a60d921130
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.8 MB (217802402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd5b39f8f9eabb8d60ed82d7feb0b75722f1216a373d83e59890f1bcb98749e7`
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
# Fri, 28 Aug 2026 21:35:31 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Fri, 28 Aug 2026 21:35:31 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 28 Aug 2026 21:35:31 GMT
ENV JAVA_VERSION=8.0.8.71
# Fri, 28 Aug 2026 21:39:02 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='bf96528c4be42e2fc4520e3e0ef32ec9ccd6fb3492aea2cded29fe39ec1ea503';          YML_FILE='8.0/sdk/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='946f8e56cc033e8b964da34c5554fa6b50b66a0a220699b5dfb436f780c192eb';          YML_FILE='8.0/sdk/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='3cb2cb64591dd4c438bed7cf5c5a5368b6b5a390bebb95828323947e5a7a91c1';          YML_FILE='8.0/sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Fri, 28 Aug 2026 21:39:02 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 28 Aug 2026 21:57:12 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 28 Aug 2026 21:57:12 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 28 Aug 2026 21:57:12 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 28 Aug 2026 21:57:12 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 28 Aug 2026 21:57:12 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 28 Aug 2026 21:57:12 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 28 Aug 2026 21:57:12 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 28 Aug 2026 21:57:12 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 28 Aug 2026 21:57:12 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 28 Aug 2026 21:57:12 GMT
ARG USER_HOME_DIR=/root
# Fri, 28 Aug 2026 21:57:12 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 28 Aug 2026 21:57:12 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 28 Aug 2026 21:57:12 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8df40e81a854eea0b704e2dfbc8a3ac4c6532093862632f650a82efa836c6214`  
		Last Modified: Fri, 28 Aug 2026 21:37:09 GMT  
		Size: 1.4 MB (1409046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5da74a40e936702ded03164a284bd86ef3fd463da880f43912cd927de019ab9`  
		Last Modified: Fri, 28 Aug 2026 21:39:21 GMT  
		Size: 174.2 MB (174176760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40de4765392877226c17023dd84c0363b49963c6afb9aa6d71d99fe65f300738`  
		Last Modified: Fri, 28 Aug 2026 21:57:22 GMT  
		Size: 3.1 MB (3118680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdf56ee10960b612d51427da8516885119f55bc038f02b9d588bfae9b3ff8f73`  
		Last Modified: Fri, 28 Aug 2026 21:57:23 GMT  
		Size: 9.4 MB (9359967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2646e654dcb1d91f3d0706c43304bc22ade35b32e9e64bd16ed15c9ac8a19398`  
		Last Modified: Fri, 28 Aug 2026 21:57:22 GMT  
		Size: 852.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b981c9eb0f3d254b6bb72f271618a9ef4808ffe47f34dad5b53f648722cbaa2d`  
		Last Modified: Fri, 28 Aug 2026 21:57:22 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-ibmjava` - unknown; unknown

```console
$ docker pull maven@sha256:914eaad9d38a341d597dfb8fce16dd467a052fd016c4993885af2e15874d644f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3279940 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:422cf4930f54884a73b10908c6230d88fbc50cba2253f59faa8742cdd85d556a`

```dockerfile
```

-	Layers:
	-	`sha256:0b5fcda18c4da89c22f5c3626a8f72a39816ba1b642afbe99fa6a5daa6f6decf`  
		Last Modified: Fri, 28 Aug 2026 21:57:22 GMT  
		Size: 3.3 MB (3263162 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:52f20af39e98d0f7629c2558781d7b3228808f33912a3d8c994732075f3f2f90`  
		Last Modified: Fri, 28 Aug 2026 21:57:22 GMT  
		Size: 16.8 KB (16778 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-ibmjava` - linux; ppc64le

```console
$ docker pull maven@sha256:88601f718504c833d1e06bc736b7e382ef30561fc7abed6d8f54377af42fba3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.4 MB (224384898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6b091ba9f9b2d5570416f7abe59a8e0ee36918de811f53dd61a745744d13acf`
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
# Fri, 28 Aug 2026 21:34:22 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Fri, 28 Aug 2026 21:34:22 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 28 Aug 2026 21:34:22 GMT
ENV JAVA_VERSION=8.0.8.71
# Fri, 28 Aug 2026 21:36:20 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='bf96528c4be42e2fc4520e3e0ef32ec9ccd6fb3492aea2cded29fe39ec1ea503';          YML_FILE='8.0/sdk/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='946f8e56cc033e8b964da34c5554fa6b50b66a0a220699b5dfb436f780c192eb';          YML_FILE='8.0/sdk/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='3cb2cb64591dd4c438bed7cf5c5a5368b6b5a390bebb95828323947e5a7a91c1';          YML_FILE='8.0/sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Fri, 28 Aug 2026 21:36:20 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 28 Aug 2026 21:55:37 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 28 Aug 2026 21:55:38 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 28 Aug 2026 21:55:38 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 28 Aug 2026 21:55:38 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 28 Aug 2026 21:55:38 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 28 Aug 2026 21:55:38 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 28 Aug 2026 21:55:38 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 28 Aug 2026 21:55:39 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 28 Aug 2026 21:55:40 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 28 Aug 2026 21:55:40 GMT
ARG USER_HOME_DIR=/root
# Fri, 28 Aug 2026 21:55:40 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 28 Aug 2026 21:55:40 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 28 Aug 2026 21:55:40 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:f91e00e792a8adfcd4df0b5c8e802d3b4d1e06477f9753454043a7ce76772758`  
		Last Modified: Mon, 10 Aug 2026 20:09:02 GMT  
		Size: 34.6 MB (34638145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe4edf91ff647a54d6f38ce36471279a2bb2c45d587bc8f656e0a99c2c9758ec`  
		Last Modified: Fri, 28 Aug 2026 21:35:11 GMT  
		Size: 1.5 MB (1494976 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3d2c28d997c48d799a20244dfa127cbeb76641beace117e97a7b7b903996dda`  
		Last Modified: Fri, 28 Aug 2026 21:36:57 GMT  
		Size: 175.0 MB (174958697 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:674ab61a20be8f25aae88660bcbed76cd5576331d667afb028e4ad544f60c9d0`  
		Last Modified: Fri, 28 Aug 2026 21:55:59 GMT  
		Size: 3.9 MB (3932100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8c2b0fa590b7ec81efd170b5ee99fbf13168ef20961b2d6f92b2ab1a19e194a`  
		Last Modified: Fri, 28 Aug 2026 21:56:00 GMT  
		Size: 9.4 MB (9359972 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0a8332f18a34626071eb1ce6e70d8a2dbf52db46da11b14f57a62853fb6c2be`  
		Last Modified: Fri, 28 Aug 2026 21:55:59 GMT  
		Size: 853.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8c49166ca185597089066182f728138d0a6641d5617cd46af3c10b5eb50f67d`  
		Last Modified: Fri, 28 Aug 2026 21:55:59 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-ibmjava` - unknown; unknown

```console
$ docker pull maven@sha256:0b954107445403e375eb17b0abf3123e5519e5a755ea734b516b2f6c3d819a2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3266126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d87f1e53810c780f549a9650a75e18e01425e0079f5bf66d46dbcaddec983d6b`

```dockerfile
```

-	Layers:
	-	`sha256:6444621986c813633f971a4ad39b9e48b511d00d65b2371b6df0972b21be74de`  
		Last Modified: Fri, 28 Aug 2026 21:55:59 GMT  
		Size: 3.2 MB (3249273 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:335d783f2b8442e6e149bd1ec23956a5a2ed5d684145847b92d42eba6995313b`  
		Last Modified: Fri, 28 Aug 2026 21:55:59 GMT  
		Size: 16.9 KB (16853 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-ibmjava` - linux; s390x

```console
$ docker pull maven@sha256:f726a357e7db5c52d90b98f2d278f3c4decb037c288a862dc53c499cc1d87e91
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **210.8 MB (210758271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22e89a6e99131981afdc236a0ef92d224ff3242281f11392650f555c3526b12a`
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
# Fri, 28 Aug 2026 21:34:31 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Fri, 28 Aug 2026 21:34:31 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 28 Aug 2026 21:34:31 GMT
ENV JAVA_VERSION=8.0.8.71
# Fri, 28 Aug 2026 21:35:21 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='bf96528c4be42e2fc4520e3e0ef32ec9ccd6fb3492aea2cded29fe39ec1ea503';          YML_FILE='8.0/sdk/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='946f8e56cc033e8b964da34c5554fa6b50b66a0a220699b5dfb436f780c192eb';          YML_FILE='8.0/sdk/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='3cb2cb64591dd4c438bed7cf5c5a5368b6b5a390bebb95828323947e5a7a91c1';          YML_FILE='8.0/sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Fri, 28 Aug 2026 21:35:21 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 28 Aug 2026 21:53:33 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 28 Aug 2026 21:53:33 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 28 Aug 2026 21:53:33 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 28 Aug 2026 21:53:33 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 28 Aug 2026 21:53:33 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 28 Aug 2026 21:53:33 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 28 Aug 2026 21:53:33 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 28 Aug 2026 21:53:34 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 28 Aug 2026 21:53:34 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 28 Aug 2026 21:53:34 GMT
ARG USER_HOME_DIR=/root
# Fri, 28 Aug 2026 21:53:34 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 28 Aug 2026 21:53:34 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 28 Aug 2026 21:53:34 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:3c9503cfff1c82d12820c3c752940964f6a091cb183b44e45fc5a003b8d47e87`  
		Last Modified: Mon, 10 Aug 2026 20:09:16 GMT  
		Size: 28.2 MB (28210903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7472da37cd2ec23625ac701d291c7d07d0e2b7d9ecacbac0774c7f32ebee4a0`  
		Last Modified: Fri, 28 Aug 2026 21:35:13 GMT  
		Size: 1.4 MB (1412378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4b6d55d4e7971c6c550378358e10645e9742bf5f7da3b6d91c45d0105e843fb`  
		Last Modified: Fri, 28 Aug 2026 21:35:49 GMT  
		Size: 168.7 MB (168713643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c84e6e334ae0fc04034a5e909bb3a15616c1487ae79ba53ab4b4e1a7d9850e2f`  
		Last Modified: Fri, 28 Aug 2026 21:53:52 GMT  
		Size: 3.1 MB (3060365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3937cd0b813f673ff98729a0365cd697970909a0356b38849e4c682b966dbf8c`  
		Last Modified: Fri, 28 Aug 2026 21:53:52 GMT  
		Size: 9.4 MB (9359972 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1428aece626c9aa84938a9f81732e1b41a79310cc936d01ccd264bb1eb72fa70`  
		Last Modified: Fri, 28 Aug 2026 21:53:52 GMT  
		Size: 854.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f64b938c56b1de3ab5f9d1cd00624d22fad494a0cf50d53a5f5a9b6abfed9552`  
		Last Modified: Fri, 28 Aug 2026 21:53:52 GMT  
		Size: 156.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-ibmjava` - unknown; unknown

```console
$ docker pull maven@sha256:cdd4c3130236c1de01c5c47b7de7a7604a8cad0a0e8ccc0d7ffd612ec5d82924
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2953226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98ae48ccb1d62edb47383c4192ac10ecf815000e311034cf4e1b99a112cabe4f`

```dockerfile
```

-	Layers:
	-	`sha256:3d46f6574e1db5d37b5785f9492f26aec24c85467dc60e70e37fa9afe549c5aa`  
		Last Modified: Fri, 28 Aug 2026 21:53:52 GMT  
		Size: 2.9 MB (2936448 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a4960e551dfec48c4729fa44f76e1b30b248ef93403701de88d9889e53050621`  
		Last Modified: Fri, 28 Aug 2026 21:53:52 GMT  
		Size: 16.8 KB (16778 bytes)  
		MIME: application/vnd.in-toto+json
