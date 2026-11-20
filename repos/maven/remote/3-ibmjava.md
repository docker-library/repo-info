## `maven:3-ibmjava`

```console
$ docker pull maven@sha256:cfd8a4c5cbb1e6f6c22ef78d34578d959222316d78b5ff9e09097b517fa59091
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
$ docker pull maven@sha256:c5efc1beb330f2d8902f47aaba4f99984dd81ba8b78cb609657066fb1b834195
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.9 MB (218908256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee32397c915f7e252eef915ce45d98d9d7e0aad45cc1bc721c137a53a2753cee`
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
# Fri, 20 Nov 2026 06:15:02 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 06:15:02 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 20 Nov 2026 06:15:02 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 06:15:02 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 06:15:02 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 20 Nov 2026 06:15:02 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 20 Nov 2026 06:15:02 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 20 Nov 2026 06:15:02 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 06:15:02 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 20 Nov 2026 06:15:02 GMT
ARG USER_HOME_DIR=/root
# Fri, 20 Nov 2026 06:15:02 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 20 Nov 2026 06:15:02 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 20 Nov 2026 06:15:02 GMT
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
	-	`sha256:9d360694ebe0bdc8bd4244e308e7ef62d3cb84ea25ffd0c4390e122c45ae6e27`  
		Last Modified: Fri, 20 Nov 2026 06:15:12 GMT  
		Size: 3.1 MB (3123149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61aa99a83e6fcc255c526338a6ac56dc2fcba472ee34f3737a4ea7129153b4f0`  
		Last Modified: Fri, 20 Nov 2026 06:15:12 GMT  
		Size: 10.1 MB (10059017 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a621303fe018199510780e258b0a5a63abd8c630ac0c46f22392793fdd4ee83b`  
		Last Modified: Fri, 20 Nov 2026 06:15:11 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e06837b6e693a6e79eed4b57ce8188a61b82081b0ece371e5c3ece30e52b05e4`  
		Last Modified: Fri, 20 Nov 2026 06:15:11 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-ibmjava` - unknown; unknown

```console
$ docker pull maven@sha256:87e7593893562ba0f2e9abfa8f0bb402c8d4399a4fc600ec6083aeb66c4710a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3282527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f19ede126186662437743122852c2f034cb5f5f0abcb27ae1670125f703234d`

```dockerfile
```

-	Layers:
	-	`sha256:37c69c17e19d7fb88e00811c48b6730575bf7d02704f65807a006f9de135dbfa`  
		Last Modified: Fri, 20 Nov 2026 06:15:12 GMT  
		Size: 3.3 MB (3265740 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9561958c557f12659bfda28d82ed460efd46a02e6e311d49af9954ab3b2c2977`  
		Last Modified: Fri, 20 Nov 2026 06:15:11 GMT  
		Size: 16.8 KB (16787 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-ibmjava` - linux; ppc64le

```console
$ docker pull maven@sha256:cd5a8dded560787b188199c0e3cc0c8ef3f0d7e317c8fcea00e76061ba2b6c5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **225.6 MB (225560511 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a13e04ecf53578307ee5974e879cb5f3222bb25e8979bab63b1f5e4e89af6a54`
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
# Fri, 20 Nov 2026 09:21:46 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 20 Nov 2026 09:21:46 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 09:21:46 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 09:21:46 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 20 Nov 2026 09:21:46 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 20 Nov 2026 09:21:46 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 20 Nov 2026 09:21:49 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 09:21:50 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 20 Nov 2026 09:21:50 GMT
ARG USER_HOME_DIR=/root
# Fri, 20 Nov 2026 09:21:50 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 20 Nov 2026 09:21:50 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 20 Nov 2026 09:21:50 GMT
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
	-	`sha256:4dbd89e3708c857e2270e7b818c5bc57539a0a8ddc562eacac7f3b37e0ea1983`  
		Last Modified: Fri, 20 Nov 2026 09:22:13 GMT  
		Size: 10.1 MB (10059014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71ed09e2877e542301ebbaf424a9d7e5639b21a66ceaf90303b0d7286ea72fdb`  
		Last Modified: Fri, 20 Nov 2026 09:22:13 GMT  
		Size: 853.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a9f37b9e643d1fa97f791bcc34bedbf19b8bade9527fdd5f4aa06eec3bdb0d4`  
		Last Modified: Fri, 20 Nov 2026 09:22:13 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-ibmjava` - unknown; unknown

```console
$ docker pull maven@sha256:727ab374d8695ec88011a6c1082d820e0fb673caa6c4cc7390a419c3e16b9f60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3268712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba22c7767ca87bc25497593a26885678562b10ed8336043dcfdb139288196416`

```dockerfile
```

-	Layers:
	-	`sha256:b7e7fae33f1eea495a0fbed4d777ecc98b8e4ce25188ad766f4f4f56865c8ea2`  
		Last Modified: Fri, 20 Nov 2026 09:22:13 GMT  
		Size: 3.3 MB (3251851 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:58145f11a4a9592d1d78a6d19d2f10fbb55b2c80b103c8006121b7f9cec55ddd`  
		Last Modified: Fri, 20 Nov 2026 09:22:13 GMT  
		Size: 16.9 KB (16861 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-ibmjava` - linux; s390x

```console
$ docker pull maven@sha256:be986354deade1f6e08a3b5cf23513f28602265ef85ff68fc3c277a8ce1bb02f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.9 MB (211903943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25fe2684b80e7c60584149e0c1ca0c6055ba3d8175b1ce42201f8eda29107089`
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
# Fri, 20 Nov 2026 06:27:57 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 20 Nov 2026 06:27:57 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 06:27:57 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 06:27:57 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 20 Nov 2026 06:27:57 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 20 Nov 2026 06:27:57 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 20 Nov 2026 06:27:57 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 06:27:57 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 20 Nov 2026 06:27:57 GMT
ARG USER_HOME_DIR=/root
# Fri, 20 Nov 2026 06:27:57 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 20 Nov 2026 06:27:57 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 20 Nov 2026 06:27:57 GMT
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
	-	`sha256:3b2663bdd47dbd35fcf1e61488fbfc7840d0509721cbd8971ff03cafcba74a72`  
		Last Modified: Fri, 20 Nov 2026 06:28:10 GMT  
		Size: 10.1 MB (10058972 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e734772070f5033ef57ecc744052ab80c9b6da1ada63e3549aa1c8623d58631e`  
		Last Modified: Fri, 20 Nov 2026 06:28:10 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a212612787aece84df85b7fb81ec0c3fe1f703fc88a6a834da4573888c93283`  
		Last Modified: Fri, 20 Nov 2026 06:28:10 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-ibmjava` - unknown; unknown

```console
$ docker pull maven@sha256:ac9ca075a52e9aafed0b922b17d61960d58aeccd3ffe8e7f426cf748c2136dd0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2955813 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a74d5b437aa79c2ca578322965f5098b57238b2f481aa0712de5eaeee409ed8`

```dockerfile
```

-	Layers:
	-	`sha256:980f5ec2b0644f19c2ba7da9534f61b9f97ac77a81b9a8df19d72f8c7526bf5d`  
		Last Modified: Fri, 20 Nov 2026 06:28:10 GMT  
		Size: 2.9 MB (2939026 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5d8ce3a1b17fcf8c11051b70f35d1d7f60e72ec54a8d8b3fd8d11e6e057cb0bd`  
		Last Modified: Fri, 20 Nov 2026 06:28:10 GMT  
		Size: 16.8 KB (16787 bytes)  
		MIME: application/vnd.in-toto+json
