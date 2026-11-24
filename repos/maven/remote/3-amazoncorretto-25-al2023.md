## `maven:3-amazoncorretto-25-al2023`

```console
$ docker pull maven@sha256:219984ceca321a578409b7eacc235837a299f96e3433246830df5d506c07dc77
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-25-al2023` - linux; amd64

```console
$ docker pull maven@sha256:67443c6d95ce3d48f44beda7c50e0017da7067c1aadf821dc3069303e2b7cf23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **432.2 MB (432203807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07d4cdc6a1af83dc10edacb78f1770076d85accbbd25d04cca92eb08f85516dd`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 23 Nov 2026 20:27:44 GMT
COPY /rootfs/ / # buildkit
# Mon, 23 Nov 2026 20:27:44 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 21:11:25 GMT
ARG version=25.0.5.1.2-1
# Mon, 23 Nov 2026 21:11:25 GMT
ARG resource_version=25.0.5.1.2
# Mon, 23 Nov 2026 21:11:25 GMT
ARG package_version=1
# Mon, 23 Nov 2026 21:11:25 GMT
# ARGS: version=25.0.5.1.2-1 resource_version=25.0.5.1.2 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 23 Nov 2026 21:11:25 GMT
ENV LANG=C.UTF-8
# Mon, 23 Nov 2026 21:11:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Mon, 23 Nov 2026 21:32:10 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Mon, 23 Nov 2026 21:32:10 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Mon, 23 Nov 2026 21:32:10 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Mon, 23 Nov 2026 21:32:10 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Mon, 23 Nov 2026 21:32:10 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Mon, 23 Nov 2026 21:32:10 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 23 Nov 2026 21:32:10 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Mon, 23 Nov 2026 21:32:10 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Mon, 23 Nov 2026 21:32:11 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Mon, 23 Nov 2026 21:32:11 GMT
ARG USER_HOME_DIR=/root
# Mon, 23 Nov 2026 21:32:11 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 23 Nov 2026 21:32:11 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 23 Nov 2026 21:32:11 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:88cafb2c9567db642a80315f76be36da2bd56094bdf8c8155ad2f5c3345fb5f4`  
		Last Modified: Fri, 20 Nov 2026 20:24:07 GMT  
		Size: 54.6 MB (54565169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14a1b6c2b650cdf38f05282d1aea6d2169a21b4bd145754596610ed2ce67d90c`  
		Last Modified: Mon, 23 Nov 2026 21:11:49 GMT  
		Size: 189.6 MB (189647744 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27c1f4f4c51c93a828b69f49fd3c08bc50ca15d46982f602e5fa8eca128802b1`  
		Last Modified: Mon, 23 Nov 2026 21:32:33 GMT  
		Size: 178.6 MB (178638599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34e27e9302395b82f84817d082c87e8afb23f73ccde127f1d05bf317a6905caa`  
		Last Modified: Mon, 23 Nov 2026 21:32:30 GMT  
		Size: 9.4 MB (9351286 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1570d9cad87e781521d164133f97aa01b8614b23aadde908511a7fe4c68959c6`  
		Last Modified: Mon, 23 Nov 2026 21:32:29 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ce3e3bac27f1e28f6b430926eb56c17eaf558a03ceec5c40ef216311fa93b0a`  
		Last Modified: Mon, 23 Nov 2026 21:32:29 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-25-al2023` - unknown; unknown

```console
$ docker pull maven@sha256:d5b07b5cb8444b121df281448c8dee763299c970fa66083aee1497b4d4a956c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6237573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6da54c51e4b1ebfeeed232313c5655e659717d155e0c1fb87b0f0d6ed69f438c`

```dockerfile
```

-	Layers:
	-	`sha256:2b7e5e5a935e1be1379c1060a91eaf967a2e91e15e24b3a3f34b3a0281cd51e8`  
		Last Modified: Mon, 23 Nov 2026 21:32:30 GMT  
		Size: 6.2 MB (6222056 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:caaff914505fd495165a07adea379508a6784b949ae552caaa7970a38f52109d`  
		Last Modified: Mon, 23 Nov 2026 21:32:29 GMT  
		Size: 15.5 KB (15517 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-25-al2023` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:060bb9d49e8894a4e99b0b4227c687f472fa150ccc9985323eec6392adc2319b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **426.6 MB (426557761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a2c681d8cfb2ea9a0fab46c7534e7d73a3d4e30039f9a4aef96465225fed1dc`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 18 Nov 2026 21:16:23 GMT
COPY /rootfs/ / # buildkit
# Wed, 18 Nov 2026 21:16:23 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 21:35:57 GMT
ARG version=25.0.5.1.2-1
# Wed, 18 Nov 2026 21:35:57 GMT
ARG resource_version=25.0.5.1.2
# Wed, 18 Nov 2026 21:35:57 GMT
ARG package_version=1
# Wed, 18 Nov 2026 21:35:57 GMT
# ARGS: version=25.0.5.1.2-1 resource_version=25.0.5.1.2 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 18 Nov 2026 21:35:57 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 21:35:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Fri, 20 Nov 2026 06:14:18 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Fri, 20 Nov 2026 06:14:18 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 20 Nov 2026 06:14:18 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 06:14:18 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 06:14:18 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 20 Nov 2026 06:14:18 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 20 Nov 2026 06:14:18 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 20 Nov 2026 06:14:18 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 06:14:18 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 20 Nov 2026 06:14:18 GMT
ARG USER_HOME_DIR=/root
# Fri, 20 Nov 2026 06:14:18 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 20 Nov 2026 06:14:18 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 20 Nov 2026 06:14:18 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:7dd5afb185e9abad9919aa0d5eaa430bb9babdb805532cdb871320227597f486`  
		Last Modified: Wed, 18 Nov 2026 01:44:00 GMT  
		Size: 53.5 MB (53453550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:642ea915cc43453759395e7c803ccc6e101d99f76e34680e871567e6d58c01fb`  
		Last Modified: Wed, 18 Nov 2026 21:36:23 GMT  
		Size: 187.5 MB (187540189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5881ca4cea39e531de83585dbfacc955b2b033f6eac727761f8e19278947d2d6`  
		Last Modified: Fri, 20 Nov 2026 06:14:42 GMT  
		Size: 175.5 MB (175503998 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6b2ad934bbbfba2b1217493d2753ab63e5361ed997cc61350f39cb8382d2774`  
		Last Modified: Fri, 20 Nov 2026 06:14:39 GMT  
		Size: 10.1 MB (10059018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0ac2d728e7deb546e77320d8dd7cf3444dcfb0f2023d88a94a85ed1043179af`  
		Last Modified: Fri, 20 Nov 2026 06:14:38 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3085cd30ef5d6519fb69669cc9507c2e142fa46b7f409d94aa9f6635da90c1b`  
		Last Modified: Fri, 20 Nov 2026 06:14:38 GMT  
		Size: 157.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-25-al2023` - unknown; unknown

```console
$ docker pull maven@sha256:0fa7e271e504341a9991ceab882fcdd2f9b5499e0df005e45aec1da63ce6a65c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6243033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e64f2c40586b5f4b73f02d4a81c11fa0c5309f3d3cc269b707c637cfb2cbe64`

```dockerfile
```

-	Layers:
	-	`sha256:b4da1119759ffb1701a6926fec28bbde42cfad67e211c13fe7c41fe48e217526`  
		Last Modified: Fri, 20 Nov 2026 06:14:39 GMT  
		Size: 6.2 MB (6227343 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5711ae08cd30f0e29165b6868b6b6cd2982a36dbbeb79fb2dc13dcdcfd7cba6f`  
		Last Modified: Fri, 20 Nov 2026 06:14:38 GMT  
		Size: 15.7 KB (15690 bytes)  
		MIME: application/vnd.in-toto+json
