## `maven:3-amazoncorretto-17`

```console
$ docker pull maven@sha256:84330bd081ffa624c50c728d41372da57cf6e9ab551dba1f24e96986eb24d735
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-17` - linux; amd64

```console
$ docker pull maven@sha256:7c57b25156fc93cf9b5ff6833c2d3563abc9098196df1bbe40833d2e76dc9bd4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **369.4 MB (369416242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9201860e5a768b21f9653af08250e2bf21ace7bfd28eaa99436631e02f6ee309`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 04 Aug 2026 00:27:38 GMT
COPY /rootfs/ / # buildkit
# Tue, 04 Aug 2026 00:27:38 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 00:57:45 GMT
ARG version=17.0.20.8-1
# Tue, 04 Aug 2026 00:57:45 GMT
ARG package_version=1
# Tue, 04 Aug 2026 00:57:45 GMT
# ARGS: version=17.0.20.8-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 04 Aug 2026 00:57:45 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 00:57:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
# Tue, 04 Aug 2026 03:41:21 GMT
RUN yum install -y tar which gzip # TODO remove # buildkit
# Tue, 04 Aug 2026 03:41:23 GMT
RUN yum install -y openssh-clients # buildkit
# Tue, 04 Aug 2026 03:41:23 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 04 Aug 2026 03:41:23 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 04 Aug 2026 03:41:23 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 04 Aug 2026 03:41:23 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 04 Aug 2026 03:41:23 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 04 Aug 2026 03:41:23 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 04 Aug 2026 03:41:23 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 04 Aug 2026 03:41:23 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 04 Aug 2026 03:41:23 GMT
ARG USER_HOME_DIR=/root
# Tue, 04 Aug 2026 03:41:23 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 04 Aug 2026 03:41:23 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 04 Aug 2026 03:41:23 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:1c635d63e15b914a52c850733b73b200164c1b4f22ce422b48b4130f93dee906`  
		Last Modified: Tue, 28 Jul 2026 03:02:31 GMT  
		Size: 54.6 MB (54572680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c39ea4f859b83f5205b2979eea64b65450ec1cc4ee0c2a23b590101ba9207d76`  
		Last Modified: Tue, 04 Aug 2026 00:58:06 GMT  
		Size: 157.1 MB (157140896 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b2ce673477514744a32683093558555f0e07ecec34d89bf78c277082acfc4eb`  
		Last Modified: Tue, 04 Aug 2026 03:41:43 GMT  
		Size: 135.8 MB (135824709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90bf4c2c833b2de163d428772117c8ac4fe7b010fa928516fbb7d51420a70f05`  
		Last Modified: Tue, 04 Aug 2026 03:41:40 GMT  
		Size: 12.5 MB (12516977 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4baf2c5316983cd0c6386056fa95ed95864a2ddac90a5b1d3119fb5b33952743`  
		Last Modified: Tue, 04 Aug 2026 03:41:40 GMT  
		Size: 9.4 MB (9359973 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:160371475d8aa7f67f74a533b68d7e5c4eb740506af28820416149afaa52e9c5`  
		Last Modified: Tue, 04 Aug 2026 03:41:39 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:719a1426f99a0b2edb8dbdba2f2b7d0d2e117774d77b3fa19ed4777a676ca586`  
		Last Modified: Tue, 04 Aug 2026 03:41:40 GMT  
		Size: 157.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-17` - unknown; unknown

```console
$ docker pull maven@sha256:04a105a76f682acd855d1c8c30f285dd406bace535c52a59e7fd8ef8139e9e67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6228036 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aeed0c08ada7eafc6e4797864e4ee2590eccc3bfa0c489e4eb8f8a73046abb72`

```dockerfile
```

-	Layers:
	-	`sha256:dcc0d2dac6771fbd54fb191146a5140bcc5721c64a73e96239b4f350a5e59f21`  
		Last Modified: Tue, 04 Aug 2026 03:41:40 GMT  
		Size: 6.2 MB (6211840 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:837013d59fb49fc61320c26226a9c8ffbb1da848c2c847d39c20c655dda10dca`  
		Last Modified: Tue, 04 Aug 2026 03:41:39 GMT  
		Size: 16.2 KB (16196 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-17` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:bba3cc311685c16a95c5e9f673347fe3a79f0d6551724d0f12844ddd0cc6bdf2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **365.6 MB (365637016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e77f1f90a7aff43ce267fe095da925c65eb8ae316e7abb6b30150a72ea3b459e`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 04 Aug 2026 00:27:37 GMT
COPY /rootfs/ / # buildkit
# Tue, 04 Aug 2026 00:27:37 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 00:56:50 GMT
ARG version=17.0.20.8-1
# Tue, 04 Aug 2026 00:56:50 GMT
ARG package_version=1
# Tue, 04 Aug 2026 00:56:50 GMT
# ARGS: version=17.0.20.8-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 04 Aug 2026 00:56:50 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 00:56:50 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
# Tue, 04 Aug 2026 03:41:09 GMT
RUN yum install -y tar which gzip # TODO remove # buildkit
# Tue, 04 Aug 2026 03:41:11 GMT
RUN yum install -y openssh-clients # buildkit
# Tue, 04 Aug 2026 03:41:11 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 04 Aug 2026 03:41:11 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 04 Aug 2026 03:41:11 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 04 Aug 2026 03:41:11 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 04 Aug 2026 03:41:11 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 04 Aug 2026 03:41:11 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 04 Aug 2026 03:41:11 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 04 Aug 2026 03:41:11 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 04 Aug 2026 03:41:11 GMT
ARG USER_HOME_DIR=/root
# Tue, 04 Aug 2026 03:41:11 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 04 Aug 2026 03:41:11 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 04 Aug 2026 03:41:11 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:0d194348effd1a9f66c459a1b81ed9823b1301b8d182e914b8ddc71c54c528e5`  
		Last Modified: Tue, 28 Jul 2026 08:44:17 GMT  
		Size: 53.4 MB (53448657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8cf99ec5f67b1b676ae450b45c93e5eb1a3ed69de52b80d2393fb7708fe1120`  
		Last Modified: Tue, 04 Aug 2026 00:57:12 GMT  
		Size: 155.9 MB (155949762 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:607512ca4e6020945c77f53682b25613185b44f952723c719ed2f9c2c14ba4e9`  
		Last Modified: Tue, 04 Aug 2026 03:41:32 GMT  
		Size: 134.1 MB (134107315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9952d53bc4f98c95bbea804f0109ed7d9f1d533c1c958094e6a6516a502754f0`  
		Last Modified: Tue, 04 Aug 2026 03:41:29 GMT  
		Size: 12.8 MB (12770301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1be28fb418f63830403b68c49f38897f5918f4fe25fc88bcbe9270b442617f44`  
		Last Modified: Tue, 04 Aug 2026 03:41:28 GMT  
		Size: 9.4 MB (9359973 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbdc1bee35f143f6f5661f9c912bb514ed71e486481b498c4cc04847908c7308`  
		Last Modified: Tue, 04 Aug 2026 03:41:28 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2506ea46b3ff854999fb459091523d33561386cbd209634d76741ffd349eede5`  
		Last Modified: Tue, 04 Aug 2026 03:41:29 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-17` - unknown; unknown

```console
$ docker pull maven@sha256:ceb3a5bb4cbe26136a4c81754ce2c4d55281c4ff7e63facb5aca057e62f4d099
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6227115 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e0e18c2dc1375bb4e66c153f044f9eca782aba368b75106e5f3d04740a7beff`

```dockerfile
```

-	Layers:
	-	`sha256:5cb5f42b62207bd6504dc3ae83b4a5458302a40adadb9c8548ba34feb18e9047`  
		Last Modified: Tue, 04 Aug 2026 03:41:28 GMT  
		Size: 6.2 MB (6210771 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0be61a114b6143f0121459f0833614bde36ecbbb9684d017455b82583ba23d89`  
		Last Modified: Tue, 04 Aug 2026 03:41:28 GMT  
		Size: 16.3 KB (16344 bytes)  
		MIME: application/vnd.in-toto+json
