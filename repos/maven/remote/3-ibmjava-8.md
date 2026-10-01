## `maven:3-ibmjava-8`

```console
$ docker pull maven@sha256:0813ebc7756feff855b6befd47ba2508d22d6f342c60842324cb717c54972caf
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
$ docker pull maven@sha256:9413cb6ecdb0011620b81003c3d698fc81f440ecd9a05609c29e6b4dda84e488
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.5 MB (218517957 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22f7e7f362f6ead51c1c020d437b07aee2ca30af283b11a1deb1386f0c46ade5`
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
# Thu, 01 Oct 2026 20:11:20 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 01 Oct 2026 20:11:20 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 01 Oct 2026 20:11:20 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 01 Oct 2026 20:11:20 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 01 Oct 2026 20:11:20 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 01 Oct 2026 20:11:20 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 01 Oct 2026 20:11:20 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 01 Oct 2026 20:11:20 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 01 Oct 2026 20:11:20 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 01 Oct 2026 20:11:20 GMT
ARG USER_HOME_DIR=/root
# Thu, 01 Oct 2026 20:11:20 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 01 Oct 2026 20:11:20 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 01 Oct 2026 20:11:20 GMT
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
	-	`sha256:b3ba1c2a23b45ebf372253fb433fba7f554d9dc44cd9c03e6ca40c5a4c66e811`  
		Last Modified: Thu, 01 Oct 2026 20:11:30 GMT  
		Size: 3.1 MB (3121633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3326dfeb88c0854aa59ca94c30b0a4946f666fddcdc5534b2087258276d1cf39`  
		Last Modified: Thu, 01 Oct 2026 20:11:31 GMT  
		Size: 10.1 MB (10059007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61dc50268320706a9384bc24b954874ac8cad271aa2eb9fdbeaec215de41bf2d`  
		Last Modified: Thu, 01 Oct 2026 20:11:30 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adcef2d88862ba76af8978bb01e3a5b57dd5704a627b9fd3e4afc06cc6791e0d`  
		Last Modified: Thu, 01 Oct 2026 20:11:30 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-ibmjava-8` - unknown; unknown

```console
$ docker pull maven@sha256:52dd6c09d77acdaa46962ebad02b195fa4986586dc685caad2cf545df88c58b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3283138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56a26c0e6df3c87584bbcc5a0c27414d68c208e6acec1b7d4d9943463db6fccc`

```dockerfile
```

-	Layers:
	-	`sha256:ca8b370442110ac36f8bd977fe4c4d03ccb53007db0c4342b145b03a6b6318f8`  
		Last Modified: Thu, 01 Oct 2026 20:11:30 GMT  
		Size: 3.3 MB (3266351 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:029b5da1850a8bd931742a92f85b208daded33c276effe0d2ea7cf994c1b4234`  
		Last Modified: Thu, 01 Oct 2026 20:11:30 GMT  
		Size: 16.8 KB (16787 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-ibmjava-8` - linux; ppc64le

```console
$ docker pull maven@sha256:0673ce4495193a01838f9a10f9346473e2ddee726a722ec88e265a81deab0dc9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **225.2 MB (225150073 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10ac6a5e4b29d60f5b5dc7e6245fd3ca9dbaeb02b615f277e14c8780d1246345`
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
# Sat, 26 Sep 2026 06:21:44 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 01 Oct 2026 20:38:34 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 01 Oct 2026 20:38:34 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 01 Oct 2026 20:38:34 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 01 Oct 2026 20:38:34 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 01 Oct 2026 20:38:34 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 01 Oct 2026 20:38:34 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 01 Oct 2026 20:38:35 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 01 Oct 2026 20:38:35 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 01 Oct 2026 20:38:35 GMT
ARG USER_HOME_DIR=/root
# Thu, 01 Oct 2026 20:38:35 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 01 Oct 2026 20:38:35 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 01 Oct 2026 20:38:35 GMT
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
	-	`sha256:ed013ae609cf20db0cbf6c008d1ae3e00237b6990ee5f684cc40641c33a9c07a`  
		Last Modified: Sat, 26 Sep 2026 06:22:12 GMT  
		Size: 3.9 MB (3933851 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c9f6dc3eac54a77be7fd2c860ef814a87ca84ed6a9626ffdcf323bd35a4c64f`  
		Last Modified: Thu, 01 Oct 2026 20:39:13 GMT  
		Size: 10.1 MB (10059019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40500dd174b6a2df9eb4b5656f71cbc3f7fb68e0abd1d5bbb68b6fcdbb17cd2d`  
		Last Modified: Thu, 01 Oct 2026 20:39:12 GMT  
		Size: 852.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9954b4dcfff650e2e68a5589d6d365efee0238a06e393b6df9f305188ddeda1`  
		Last Modified: Thu, 01 Oct 2026 20:39:12 GMT  
		Size: 156.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-ibmjava-8` - unknown; unknown

```console
$ docker pull maven@sha256:5a80c5131362a7be4ad87b8e404a5b5bc2d47618267fe9a6c0717be6b78a8e4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3269323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:938fc686baab0d27548b9aa9c3cf577b6eed54a17ee7d0b6679893bf78c5179b`

```dockerfile
```

-	Layers:
	-	`sha256:c5c33c88352d6901a05c27b1dda68bb59252369738de61f1cf56b64bd53526e4`  
		Last Modified: Thu, 01 Oct 2026 20:39:12 GMT  
		Size: 3.3 MB (3252462 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4aa3e263e5bd6ca066ca7676b025b687febedd598372a37ccd32df053370204f`  
		Last Modified: Thu, 01 Oct 2026 20:39:12 GMT  
		Size: 16.9 KB (16861 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-ibmjava-8` - linux; s390x

```console
$ docker pull maven@sha256:8574dae79e0e628ecee39f6fb74e23ac61d21face01a964e68c2a5333f5ec5d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.5 MB (211477312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c7fc0bd61eb8238228f3c371bd11be59082b8e484bcc1f7244d6eb5d3f844a5`
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
# Thu, 01 Oct 2026 20:22:41 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 01 Oct 2026 20:22:41 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 01 Oct 2026 20:22:41 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 01 Oct 2026 20:22:41 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 01 Oct 2026 20:22:41 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 01 Oct 2026 20:22:41 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 01 Oct 2026 20:22:41 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 01 Oct 2026 20:22:42 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 01 Oct 2026 20:22:42 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 01 Oct 2026 20:22:42 GMT
ARG USER_HOME_DIR=/root
# Thu, 01 Oct 2026 20:22:42 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 01 Oct 2026 20:22:42 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 01 Oct 2026 20:22:42 GMT
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
	-	`sha256:c685c3bf93ab522457411f240c02841a227c3c3298acd38150ddffb6d5910f12`  
		Last Modified: Thu, 01 Oct 2026 20:23:05 GMT  
		Size: 3.1 MB (3064955 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44ed0245981026bf591ca24e1da6644510a6c475ba27ac3e30e89e6a3a2c9962`  
		Last Modified: Thu, 01 Oct 2026 20:23:05 GMT  
		Size: 10.1 MB (10059003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa3b3b4e571cb114aaee863a6534f134718e53b043970d1606fb11bdad18c850`  
		Last Modified: Thu, 01 Oct 2026 20:23:05 GMT  
		Size: 852.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e78f78d1177615232e60e11f765066f516f7ddd89813048a80e76cf03d39ebfb`  
		Last Modified: Thu, 01 Oct 2026 20:23:04 GMT  
		Size: 156.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-ibmjava-8` - unknown; unknown

```console
$ docker pull maven@sha256:465512cd01360ac4bcd37f1415c3e6bb9042e5248df771e6d1119a5fc7295651
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2956424 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16989a652532f5fb180dd14118eac3b269e9e29041dcbe6f2db5ec62512ccde2`

```dockerfile
```

-	Layers:
	-	`sha256:c8bfb2dc6fcf493e6e3475d5885a60f710474634ce2ca0e01a66b3ffd1a154b9`  
		Last Modified: Thu, 01 Oct 2026 20:23:04 GMT  
		Size: 2.9 MB (2939637 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bd4fa75f7123b192d41088d62af7c36ce67f40db6843b45c3dc2680d9f0bd819`  
		Last Modified: Thu, 01 Oct 2026 20:23:05 GMT  
		Size: 16.8 KB (16787 bytes)  
		MIME: application/vnd.in-toto+json
