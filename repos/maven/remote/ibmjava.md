## `maven:ibmjava`

```console
$ docker pull maven@sha256:4b779db2fc09d2bfa5d19befbca898f9855d05c09376eb8064ad78bfc30d4c32
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
$ docker pull maven@sha256:eef974f1ee7ace9f9e273ec8483fcbc639e420fc9f75d950310b558474bbf3c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.2 MB (218200544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:734d2437807b75640be75fe8d371f7059bdbcb816a484795447764320a602744`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 17 Nov 2026 09:18:24 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:18:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:18:24 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:18:27 GMT
ADD file:577abcbf057cdd5d520b6dbfa56d772c9fb1fa3dd63cb6db8942d63dfc9d902b in / 
# Tue, 17 Nov 2026 09:18:27 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:22:48 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Fri, 20 Nov 2026 03:22:48 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:22:48 GMT
ENV JAVA_VERSION=8.0.8.75
# Fri, 20 Nov 2026 03:23:42 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='7ddf47ef27fe053cdf1de74bd6777c52e8d5c2999362daabaed66b6204d74b4b';          YML_FILE='8.0/sdk/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='a0180d27a3ea65e768cc982c5face20d7a68cbeda30abac74b16a31b33744add';          YML_FILE='8.0/sdk/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='dcd950995ee2d046c743382eae742ff3e80d08a65fc3a267003290d732c84d9b';          YML_FILE='8.0/sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Fri, 20 Nov 2026 03:23:42 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Mon, 23 Nov 2026 20:12:14 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 23 Nov 2026 20:12:14 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Mon, 23 Nov 2026 20:12:14 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Mon, 23 Nov 2026 20:12:14 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Mon, 23 Nov 2026 20:12:14 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Mon, 23 Nov 2026 20:12:14 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 23 Nov 2026 20:12:14 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Mon, 23 Nov 2026 20:12:14 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Mon, 23 Nov 2026 20:12:15 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Mon, 23 Nov 2026 20:12:15 GMT
ARG USER_HOME_DIR=/root
# Mon, 23 Nov 2026 20:12:15 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 23 Nov 2026 20:12:15 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 23 Nov 2026 20:12:15 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b9a6502ac2e0260c92004941250d488dfa21b0cad772448a472bc40a2593461`  
		Last Modified: Fri, 20 Nov 2026 03:23:56 GMT  
		Size: 1.4 MB (1407524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:153007822adbfc5aaccb2debbdd68751dbd657f6c6553c2c5df8ebb8ed09b4bb`  
		Last Modified: Fri, 20 Nov 2026 03:24:00 GMT  
		Size: 174.2 MB (174247746 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d2c9ccb7e92290516d3920c6658a75e6de1b70f9cada0fc909627ab3a3a8d52`  
		Last Modified: Mon, 23 Nov 2026 20:12:24 GMT  
		Size: 3.1 MB (3123159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cf3ecf256a40c30997703e111158aa880d2a6938db9c976f520be1865f154e3`  
		Last Modified: Mon, 23 Nov 2026 20:12:24 GMT  
		Size: 9.4 MB (9351294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0952116d9a9f228366f99bb0c0e5faec1f628c89b61b70e67c137d38820772cf`  
		Last Modified: Mon, 23 Nov 2026 20:12:24 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:568ceb1ec6a39ef4e4751bab5728412f85caff29cfd967ec501c5990c3da5213`  
		Last Modified: Mon, 23 Nov 2026 20:12:24 GMT  
		Size: 156.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:ibmjava` - unknown; unknown

```console
$ docker pull maven@sha256:c30937cccb55c58c66bb4ef11f0364705b9f91495df3ef3ac7a78154651c4cb3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3276217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c999bf95ed29a88353b9ec4b6ddc6a0c049111c8d78d99692b39ca3c89c12cd`

```dockerfile
```

-	Layers:
	-	`sha256:63d2a97ae01dbfc0990dafef2ee518e37e7e3fd71ed66f7418b43404e0a784aa`  
		Last Modified: Mon, 23 Nov 2026 20:12:24 GMT  
		Size: 3.3 MB (3259434 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0cdbe4595d2985f619ff2dd34a48217a3eb08b065709e2231828c6a332199359`  
		Last Modified: Mon, 23 Nov 2026 20:12:24 GMT  
		Size: 16.8 KB (16783 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:ibmjava` - linux; ppc64le

```console
$ docker pull maven@sha256:0d53974938f63494e608220a9f2c269dcda285a2827e60873c7601bdafc7fb8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.9 MB (224852770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de68b7e3b134219ed83616039b8877a01282eaeb5047df1cf020dc2384a797a5`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 17 Nov 2026 09:20:22 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:20:22 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:20:22 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:20:25 GMT
ADD file:864e29ad8b1d92dce321e0401fe4ef4bbac836267e9967e73cb6394dc831cccb in / 
# Tue, 17 Nov 2026 09:20:26 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 04:58:04 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Fri, 20 Nov 2026 04:58:04 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 04:58:04 GMT
ENV JAVA_VERSION=8.0.8.75
# Fri, 20 Nov 2026 05:00:42 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='7ddf47ef27fe053cdf1de74bd6777c52e8d5c2999362daabaed66b6204d74b4b';          YML_FILE='8.0/sdk/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='a0180d27a3ea65e768cc982c5face20d7a68cbeda30abac74b16a31b33744add';          YML_FILE='8.0/sdk/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='dcd950995ee2d046c743382eae742ff3e80d08a65fc3a267003290d732c84d9b';          YML_FILE='8.0/sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Fri, 20 Nov 2026 05:00:42 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 20 Nov 2026 09:21:44 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 23 Nov 2026 20:28:36 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Mon, 23 Nov 2026 20:28:36 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Mon, 23 Nov 2026 20:28:36 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Mon, 23 Nov 2026 20:28:36 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Mon, 23 Nov 2026 20:28:36 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 23 Nov 2026 20:28:36 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Mon, 23 Nov 2026 20:28:36 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Mon, 23 Nov 2026 20:28:37 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Mon, 23 Nov 2026 20:28:37 GMT
ARG USER_HOME_DIR=/root
# Mon, 23 Nov 2026 20:28:37 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 23 Nov 2026 20:28:37 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 23 Nov 2026 20:28:37 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:a7ab357fd9dc2ccd4042230501ebce1346ff82314b13a35f8a4382786359aba5`  
		Last Modified: Tue, 17 Nov 2026 10:29:26 GMT  
		Size: 35.0 MB (35021662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52a5d6ea847aed2dbf4bd37029efb52dbaffaa908214b522a8f2e1c185778987`  
		Last Modified: Fri, 20 Nov 2026 04:59:20 GMT  
		Size: 1.5 MB (1493708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fa24d0c381118205b5dbfd48627b100e149220c336d3ea71f6353ade57fd594`  
		Last Modified: Fri, 20 Nov 2026 05:01:29 GMT  
		Size: 175.1 MB (175051273 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50180e8f5985aed2fb939e3a83cb036fb8f14bae5867bd4e1c47e0f6d59e2b09`  
		Last Modified: Fri, 20 Nov 2026 09:22:13 GMT  
		Size: 3.9 MB (3933846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e26f598838bf7cda525858fed0c48962f4beb076c263e448752a910a95825105`  
		Last Modified: Mon, 23 Nov 2026 20:28:58 GMT  
		Size: 9.4 MB (9351273 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a0a5fe7c1760a7f87d63f6885baa5fbc9a063983aa6e04c4b5002c91eb5594c`  
		Last Modified: Mon, 23 Nov 2026 20:28:57 GMT  
		Size: 853.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f125b8936cf7560de73e1341fcc6d3190c1d70f90cbf598344c257953f7b25fa`  
		Last Modified: Mon, 23 Nov 2026 20:28:58 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:ibmjava` - unknown; unknown

```console
$ docker pull maven@sha256:ff11a4c0dd24c9a61a85947f7302dd652b84ebd5db4ae201cbeb7a0872012c82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3262402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:477f29732266dad8753e7d583a6dffd0111032e4699943939a4a4aa47d4d4963`

```dockerfile
```

-	Layers:
	-	`sha256:c4adb55fafeb48368912f075eab8b3c3a0d426eb513ed63c56bbaa7701ad90ab`  
		Last Modified: Mon, 23 Nov 2026 20:28:57 GMT  
		Size: 3.2 MB (3245545 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4255ed98eeb8b5aaf96b6929e8b3f83b6eb5eb6acddf4a77e26f8c8b51896c75`  
		Last Modified: Mon, 23 Nov 2026 20:28:57 GMT  
		Size: 16.9 KB (16857 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:ibmjava` - linux; s390x

```console
$ docker pull maven@sha256:22d83a9d1eea3b3d72ab8f8227ca36d870035ac49bc7c1ffd04a98b74c60593d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.2 MB (211196265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89b460a63144f7f32d39b8e1241705b5622a2c2ec5ed95fbd2c9c42df621c97e`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 17 Nov 2026 09:18:34 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:18:34 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:18:35 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:18:36 GMT
ADD file:a83bdb195516c0bca280c16e544e4f0bdf6a82e6b162e8d9b57202bce79791b7 in / 
# Tue, 17 Nov 2026 09:18:36 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:21:30 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Fri, 20 Nov 2026 03:21:30 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:21:30 GMT
ENV JAVA_VERSION=8.0.8.75
# Fri, 20 Nov 2026 03:22:43 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='7ddf47ef27fe053cdf1de74bd6777c52e8d5c2999362daabaed66b6204d74b4b';          YML_FILE='8.0/sdk/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='a0180d27a3ea65e768cc982c5face20d7a68cbeda30abac74b16a31b33744add';          YML_FILE='8.0/sdk/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='dcd950995ee2d046c743382eae742ff3e80d08a65fc3a267003290d732c84d9b';          YML_FILE='8.0/sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Fri, 20 Nov 2026 03:22:43 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 20 Nov 2026 06:27:57 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 23 Nov 2026 20:09:36 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Mon, 23 Nov 2026 20:09:36 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Mon, 23 Nov 2026 20:09:36 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Mon, 23 Nov 2026 20:09:36 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Mon, 23 Nov 2026 20:09:36 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 23 Nov 2026 20:09:36 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Mon, 23 Nov 2026 20:09:36 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Mon, 23 Nov 2026 20:09:36 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Mon, 23 Nov 2026 20:09:36 GMT
ARG USER_HOME_DIR=/root
# Mon, 23 Nov 2026 20:09:36 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 23 Nov 2026 20:09:36 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 23 Nov 2026 20:09:36 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:0210d82c56b8b437087f28e0731e9e1fcb3ad03a1ea704993d475df7f4fc3a8d`  
		Last Modified: Tue, 17 Nov 2026 10:29:39 GMT  
		Size: 28.5 MB (28539018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2a5afb9a53ffbb2b161b75df1a9232c049854075a90e16e65671be6893224f0`  
		Last Modified: Fri, 20 Nov 2026 03:22:28 GMT  
		Size: 1.4 MB (1410498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ac1748395b5d979a17729eb7de1d1dd09c3437c1f66363a40500574bbfd57cc`  
		Last Modified: Fri, 20 Nov 2026 03:23:11 GMT  
		Size: 168.8 MB (168829657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73645e262955eba7a08e3eac561a921d350299f57239399cc35b5274da6d2fea`  
		Last Modified: Fri, 20 Nov 2026 06:28:10 GMT  
		Size: 3.1 MB (3064792 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f44db425545ab13b91991b7ee07e72bbdfa766dc493d50a926fd20d383306f6`  
		Last Modified: Mon, 23 Nov 2026 20:09:53 GMT  
		Size: 9.4 MB (9351294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbf03ee49d81f5fae8c52ae9eaa5eacb978edc9ea7d369355ce23e7cee729aa8`  
		Last Modified: Mon, 23 Nov 2026 20:09:53 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bebf5156022d3d8320fc7e719a31f7d16ab6cbc6596d6944eb93e0400ba607ec`  
		Last Modified: Mon, 23 Nov 2026 20:09:53 GMT  
		Size: 156.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:ibmjava` - unknown; unknown

```console
$ docker pull maven@sha256:2a29bf0c0f0ef14c97a6456a91b7e97893cfcaa4caad891284e5bd122da08a20
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2949503 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61fa3f91031f905c8a3796584e6ef89a6d218eba5793a17212a400883e0cd67a`

```dockerfile
```

-	Layers:
	-	`sha256:e83b3f429181e67c2e470098ced2b9e5a274e259a140ac1f27213f1c00631297`  
		Last Modified: Mon, 23 Nov 2026 20:09:53 GMT  
		Size: 2.9 MB (2932720 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3878bb2ed6bb3c7bc75f35cbbfd8e5d4eba0520803bbcba71c45e846ecda13bd`  
		Last Modified: Mon, 23 Nov 2026 20:09:53 GMT  
		Size: 16.8 KB (16783 bytes)  
		MIME: application/vnd.in-toto+json
