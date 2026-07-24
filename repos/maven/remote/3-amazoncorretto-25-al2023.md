## `maven:3-amazoncorretto-25-al2023`

```console
$ docker pull maven@sha256:e178a3c7048b5a60c07d200551baf1677950c08d35208f8b2ce58f3ada9eba29
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-25-al2023` - linux; amd64

```console
$ docker pull maven@sha256:5efe067db03d120b709456b9464ef4d722504644744b1638967bd576ae0d3ea0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **395.6 MB (395608544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2b767ba983f796da94660cfabc6fbbee31d2f1142e267e64459ef055a29d266`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:23 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:23 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:13:08 GMT
ARG version=25.0.4.7-1
# Thu, 23 Jul 2026 23:13:08 GMT
ARG package_version=1
# Thu, 23 Jul 2026 23:13:08 GMT
# ARGS: version=25.0.4.7-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 23 Jul 2026 23:13:08 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:13:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Fri, 24 Jul 2026 00:16:08 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Fri, 24 Jul 2026 00:16:08 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 24 Jul 2026 00:16:08 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 24 Jul 2026 00:16:08 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 24 Jul 2026 00:16:08 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 24 Jul 2026 00:16:08 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 24 Jul 2026 00:16:08 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 24 Jul 2026 00:16:08 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 24 Jul 2026 00:16:08 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 24 Jul 2026 00:16:08 GMT
ARG USER_HOME_DIR=/root
# Fri, 24 Jul 2026 00:16:08 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 24 Jul 2026 00:16:08 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 24 Jul 2026 00:16:08 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:3b5eb82da667b3e3ec6bc9d0b202bfba5f45c665af1ff4c33b4d24e971967e96`  
		Last Modified: Fri, 10 Jul 2026 21:57:49 GMT  
		Size: 54.6 MB (54574264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:964a6a5b83b71b12d012405abeb3132afef40960448d97a6a9166ab6b1482624`  
		Last Modified: Thu, 23 Jul 2026 23:13:33 GMT  
		Size: 189.5 MB (189475803 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaa106e4ee8a698bb64ef1fb4ed071e85b8c5ca651ce116ac0c29b6dce21ee4d`  
		Last Modified: Fri, 24 Jul 2026 00:16:26 GMT  
		Size: 142.2 MB (142197489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d592320887e0aaf4d2778639862a6cdfab1be127bb6b2ef1b2832f9d8129a67`  
		Last Modified: Fri, 24 Jul 2026 00:16:22 GMT  
		Size: 9.4 MB (9359975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b749b7e1c256bc7318c5a3afeba45bbca3758f57bef3c0a9ae9325ad60719c89`  
		Last Modified: Fri, 24 Jul 2026 00:16:22 GMT  
		Size: 854.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8815579d98ac758b4b1334fcd8a422da07f80d7ce290609afa805ced9020692f`  
		Last Modified: Fri, 24 Jul 2026 00:16:22 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-25-al2023` - unknown; unknown

```console
$ docker pull maven@sha256:54929fe6228b19ec9ca1868798640ecf3d7f96e41f590221a22a5247734edea6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6236089 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91a1dc980e9357df98f6d20722b5a3d6d526af96396dd4c6664ddccbff7b8cc7`

```dockerfile
```

-	Layers:
	-	`sha256:2568e590066b63a9159143b9240334a2d1aff7af37e9fb6e813adcd8747366fe`  
		Last Modified: Fri, 24 Jul 2026 00:16:24 GMT  
		Size: 6.2 MB (6221583 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:366870c3ca39e0980430eb2c9ee1fb7ec0bc6fe9d8ae31aa6ca799facdf49cb9`  
		Last Modified: Fri, 24 Jul 2026 00:16:25 GMT  
		Size: 14.5 KB (14506 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-25-al2023` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:b82082acc87f425492ea6d2a73f141643715f721797c91acb88bfa8e7a7534bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **391.4 MB (391361454 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b81f28b3b5eb3bf3385901bcee666d9561110587bbbcb6c7ad7df00834aa33f7`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:13 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:13 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:15:03 GMT
ARG version=25.0.4.7-1
# Thu, 23 Jul 2026 23:15:03 GMT
ARG package_version=1
# Thu, 23 Jul 2026 23:15:03 GMT
# ARGS: version=25.0.4.7-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 23 Jul 2026 23:15:03 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:15:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Fri, 24 Jul 2026 00:16:19 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Fri, 24 Jul 2026 00:16:19 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 24 Jul 2026 00:16:19 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 24 Jul 2026 00:16:19 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 24 Jul 2026 00:16:19 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 24 Jul 2026 00:16:19 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 24 Jul 2026 00:16:19 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 24 Jul 2026 00:16:19 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 24 Jul 2026 00:16:19 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 24 Jul 2026 00:16:19 GMT
ARG USER_HOME_DIR=/root
# Fri, 24 Jul 2026 00:16:19 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 24 Jul 2026 00:16:19 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 24 Jul 2026 00:16:19 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:6e12116aae4fd69e40f0f0c465aeb7f71b0d7db5d37e40fced028a576a31ca9e`  
		Last Modified: Sat, 11 Jul 2026 02:19:28 GMT  
		Size: 53.4 MB (53449232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:921ca3cd311a0af902befa8a1430dd08383471940b496e6f90ba8db99517eb23`  
		Last Modified: Thu, 23 Jul 2026 23:15:29 GMT  
		Size: 187.4 MB (187376869 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37d2d774839bce79c99d10888bffda554b93743b92fd2b7f9898616d90f35d3c`  
		Last Modified: Fri, 24 Jul 2026 00:16:41 GMT  
		Size: 141.2 MB (141174366 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6a8f0cfc45346d9630d929fcbe6ec7592a94e9b447136ba711eb68e2197d4e5`  
		Last Modified: Fri, 24 Jul 2026 00:16:38 GMT  
		Size: 9.4 MB (9359976 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dc1fb0ba95007557aa78e264cd9699a4e42cbccf4b7596746ab07273944cc75`  
		Last Modified: Fri, 24 Jul 2026 00:16:37 GMT  
		Size: 853.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f0c2494053b078c989d5bd54c6df12f6637e7690a15e61a3aebff0d1922c72c`  
		Last Modified: Fri, 24 Jul 2026 00:16:37 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-25-al2023` - unknown; unknown

```console
$ docker pull maven@sha256:e85ace36261c4a3ae97c6fc620da37a73cc5ae2ef202ae8975267579c8c3b75a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6235168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d8506b50af402e4b11d4425e39b1f9be35fb53c8a4324982255f1f5cb1ebed9`

```dockerfile
```

-	Layers:
	-	`sha256:52b15ef820cd86267391b58c6803fea753c7f87c541047210a6ac158c7392963`  
		Last Modified: Fri, 24 Jul 2026 00:16:38 GMT  
		Size: 6.2 MB (6220528 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:df5cc8228f0b7a87fffbfa1d83bf9cf064d8c9a28f3e4db81793525c676465ca`  
		Last Modified: Fri, 24 Jul 2026 00:16:37 GMT  
		Size: 14.6 KB (14640 bytes)  
		MIME: application/vnd.in-toto+json
