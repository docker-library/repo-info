## `maven:3-ibmjava-8`

```console
$ docker pull maven@sha256:b83917d325fbed30292fc919eb94ca2d99ad754a3b143f64c91ce36d1f10375d
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

### `maven:3-ibmjava-8` - unknown; unknown

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

### `maven:3-ibmjava-8` - linux; ppc64le

```console
$ docker pull maven@sha256:8df216e798197a40483a018b6a0dba00182123d157147f02bc9aefa037cc316c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **225.6 MB (225557210 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcea2ae63458c492e64956d570228234b2ca040caad3ec0344f948f442dae50d`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 10 Nov 2026 08:09:23 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:09:23 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:09:23 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:09:28 GMT
ADD file:385fbf5f6ded013bc8053d3b154b3dafc78f1addd59a1388bd56f2253ef77d18 in / 
# Tue, 10 Nov 2026 08:09:29 GMT
CMD ["/bin/bash"]
# Thu, 12 Nov 2026 17:03:46 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Thu, 12 Nov 2026 17:03:46 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 17:03:46 GMT
ENV JAVA_VERSION=8.0.8.75
# Mon, 16 Nov 2026 18:36:25 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='7ddf47ef27fe053cdf1de74bd6777c52e8d5c2999362daabaed66b6204d74b4b';          YML_FILE='8.0/sdk/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='a0180d27a3ea65e768cc982c5face20d7a68cbeda30abac74b16a31b33744add';          YML_FILE='8.0/sdk/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='dcd950995ee2d046c743382eae742ff3e80d08a65fc3a267003290d732c84d9b';          YML_FILE='8.0/sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Mon, 16 Nov 2026 18:36:25 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Mon, 16 Nov 2026 19:11:02 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 16 Nov 2026 19:11:02 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Mon, 16 Nov 2026 19:11:02 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Mon, 16 Nov 2026 19:11:02 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Mon, 16 Nov 2026 19:11:02 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Mon, 16 Nov 2026 19:11:02 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 16 Nov 2026 19:11:02 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Mon, 16 Nov 2026 19:11:03 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Mon, 16 Nov 2026 19:11:04 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Mon, 16 Nov 2026 19:11:04 GMT
ARG USER_HOME_DIR=/root
# Mon, 16 Nov 2026 19:11:04 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 16 Nov 2026 19:11:04 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 16 Nov 2026 19:11:04 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:930bdfdd5d19974adb0ba597663b144584e8fa18e103e857a3dd3eb2cd73ec5e`  
		Last Modified: Tue, 10 Nov 2026 08:55:08 GMT  
		Size: 35.0 MB (35018100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f8800ed5d0e6c0c576b97de7b9fc3b15601a3348b44c928b530fffb0389b9b0`  
		Last Modified: Thu, 12 Nov 2026 17:04:53 GMT  
		Size: 1.5 MB (1493807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15f8c288862b4541145f6db07b0370b84db1f06fda54c326ba0d449582bac5b4`  
		Last Modified: Mon, 16 Nov 2026 18:37:20 GMT  
		Size: 175.1 MB (175051313 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a53f081b0515999fba8710184765eb25c1b5264cdc46e26b1f1662800af19264`  
		Last Modified: Mon, 16 Nov 2026 19:11:23 GMT  
		Size: 3.9 MB (3933965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c50b65b0fd000c8359c00278b4be9d4c175cbdafc52049b9550f0c5d6a25c65`  
		Last Modified: Mon, 16 Nov 2026 19:11:24 GMT  
		Size: 10.1 MB (10059019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac2b5c13f34320b059d71b4d2480dd7f49b62237e087b781b7fc3a8ceec01e73`  
		Last Modified: Mon, 16 Nov 2026 19:11:23 GMT  
		Size: 852.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdb11ed9b897b39885fecbd3b0465acdbd1459b82904f0c64d063e11c12829cf`  
		Last Modified: Mon, 16 Nov 2026 19:11:23 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-ibmjava-8` - unknown; unknown

```console
$ docker pull maven@sha256:604c4555fb7bbcc1b7b6c326760637a97504c97ba27c029b2111dada3cf792aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3268711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:937bab3d130002834bcb9bedc341cfb4ff11452f3e2171c7a4049cb4e5cd5c9c`

```dockerfile
```

-	Layers:
	-	`sha256:7a959bcbeee13e2df2425727a39794010444e59a1da0a35fefe46f10f83ddab5`  
		Last Modified: Mon, 16 Nov 2026 19:11:23 GMT  
		Size: 3.3 MB (3251851 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d6afd0b68a1aacd517e9550c37a7b6dd895302aaf0b1c3c283447f204fc3d5b4`  
		Last Modified: Mon, 16 Nov 2026 19:11:23 GMT  
		Size: 16.9 KB (16860 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-ibmjava-8` - linux; s390x

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

### `maven:3-ibmjava-8` - unknown; unknown

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
