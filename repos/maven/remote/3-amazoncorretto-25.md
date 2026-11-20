## `maven:3-amazoncorretto-25`

```console
$ docker pull maven@sha256:5539f97dede38312a6b028c3c0a8dc0a88aff627a53c884fc035b0c38c697dd7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-25` - linux; amd64

```console
$ docker pull maven@sha256:8e30ce8636eef65976c63a617aa5f92d0725d92c2f889fe0e3b5a6b7d8899511
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **431.5 MB (431503615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72eec98a828e81bcc27daf8e80646c616158f0cbe7083ab5e0987ac809e4d93c`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 18 Nov 2026 21:16:24 GMT
COPY /rootfs/ / # buildkit
# Wed, 18 Nov 2026 21:16:24 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 21:35:02 GMT
ARG version=25.0.5.1.2-1
# Wed, 18 Nov 2026 21:35:02 GMT
ARG resource_version=25.0.5.1.2
# Wed, 18 Nov 2026 21:35:02 GMT
ARG package_version=1
# Wed, 18 Nov 2026 21:35:02 GMT
# ARGS: version=25.0.5.1.2-1 resource_version=25.0.5.1.2 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 18 Nov 2026 21:35:02 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 21:35:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Fri, 20 Nov 2026 06:17:29 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Fri, 20 Nov 2026 06:17:29 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 20 Nov 2026 06:17:29 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 06:17:29 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 06:17:29 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 20 Nov 2026 06:17:29 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 20 Nov 2026 06:17:29 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 20 Nov 2026 06:17:29 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 06:17:29 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 20 Nov 2026 06:17:29 GMT
ARG USER_HOME_DIR=/root
# Fri, 20 Nov 2026 06:17:29 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 20 Nov 2026 06:17:29 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 20 Nov 2026 06:17:29 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:48c7a3aa33f84b2fa7af701f558c0a97251fe0ca6790119c6f912decc8cad76d`  
		Last Modified: Tue, 17 Nov 2026 23:01:37 GMT  
		Size: 54.6 MB (54569091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7253d83a09e2ae79638b408da93783d31466366f84a741c08f5eb5067206564f`  
		Last Modified: Wed, 18 Nov 2026 21:35:26 GMT  
		Size: 189.7 MB (189652266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0bae242a94f0e54c4524312ec55954ac779c1a1aeb733fc7f0ac1783399846e`  
		Last Modified: Fri, 20 Nov 2026 06:17:52 GMT  
		Size: 177.2 MB (177222259 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f5d6ee7ca18b8589088c4e145689d40d19af6690604176b069d1140c53a59dd`  
		Last Modified: Fri, 20 Nov 2026 06:17:48 GMT  
		Size: 10.1 MB (10058993 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f329538378d63461e2ada84074b57f196a0b0a7592c457bd392bcb8167b3e403`  
		Last Modified: Fri, 20 Nov 2026 06:17:48 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41571bbe1060a69a85f9831227bd67cb608ed418dfa9289d8626b173aff2f3da`  
		Last Modified: Fri, 20 Nov 2026 06:17:48 GMT  
		Size: 156.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-25` - unknown; unknown

```console
$ docker pull maven@sha256:9ba4a67e9332c96cc6b8b581bbadce7cf3f0c6cde96fa88e554c6e4e7e219724
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6243883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fac3edda9fd98b77d6e10a79fba00d4d268c508dad6af548f1d4d931b2e1ea9f`

```dockerfile
```

-	Layers:
	-	`sha256:eb534a05641ea657b4d4c74ad92e84b68a80b7db166a46dc02380a0a5864efb5`  
		Last Modified: Fri, 20 Nov 2026 06:17:48 GMT  
		Size: 6.2 MB (6228362 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:47a3a59c1306ed5d3b272cfda4386dcf2fc59280a7a8c17425d5f09a3630474b`  
		Last Modified: Fri, 20 Nov 2026 06:17:48 GMT  
		Size: 15.5 KB (15521 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-25` - linux; arm64 variant v8

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

### `maven:3-amazoncorretto-25` - unknown; unknown

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
