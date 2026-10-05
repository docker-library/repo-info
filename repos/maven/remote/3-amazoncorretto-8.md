## `maven:3-amazoncorretto-8`

```console
$ docker pull maven@sha256:ecf620efeb9579c7196e00855a65c2fbbf1722db83f33cbe1dc603d93af49c57
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-8` - linux; amd64

```console
$ docker pull maven@sha256:6b6cb1167ed8a24e677eb468f14545b4948dac2fb37c9073391630be511b4859
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **346.6 MB (346577311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f46f1ac83c9791e7b3465b829bc11341ed54b247425f56541c0e1013fee5030`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 05 Oct 2026 18:29:04 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:29:04 GMT
CMD ["/bin/bash"]
# Mon, 05 Oct 2026 21:35:55 GMT
ARG version=1.8.0_504.b04-1
# Mon, 05 Oct 2026 21:35:55 GMT
# ARGS: version=1.8.0_504.b04-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 05 Oct 2026 21:35:55 GMT
ENV LANG=C.UTF-8
# Mon, 05 Oct 2026 21:35:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
# Mon, 05 Oct 2026 21:57:18 GMT
RUN yum install -y tar which gzip # TODO remove # buildkit
# Mon, 05 Oct 2026 21:57:20 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Mon, 05 Oct 2026 21:57:20 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Mon, 05 Oct 2026 21:57:20 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Mon, 05 Oct 2026 21:57:20 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Mon, 05 Oct 2026 21:57:20 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Mon, 05 Oct 2026 21:57:20 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 05 Oct 2026 21:57:20 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Mon, 05 Oct 2026 21:57:20 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Mon, 05 Oct 2026 21:57:20 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Mon, 05 Oct 2026 21:57:20 GMT
ARG USER_HOME_DIR=/root
# Mon, 05 Oct 2026 21:57:20 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 05 Oct 2026 21:57:20 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 05 Oct 2026 21:57:20 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:7234d0a9b6ba1270c7bb653ee62a443a1dbb6fdfa833336edd3c0691c2524d1f`  
		Last Modified: Thu, 01 Oct 2026 02:22:29 GMT  
		Size: 54.6 MB (54630770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:900b85e8ac12d4b07a845d07dd0ce786ef06d24e84cfc873f077df4008d4eb32`  
		Last Modified: Mon, 05 Oct 2026 21:36:13 GMT  
		Size: 118.1 MB (118076787 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6adf43b53e43f9da070d541c606ebd056956e7b6f83eda30cecaa90d5f0ad52`  
		Last Modified: Mon, 05 Oct 2026 21:57:38 GMT  
		Size: 150.3 MB (150299551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf8feaa001b1ae6f6cd863ab18f743e2e8e1d86db071fc4217dcbfa649e686dd`  
		Last Modified: Mon, 05 Oct 2026 21:57:35 GMT  
		Size: 13.5 MB (13510192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c4422587d84438c991c663123147c89c2fa1a035e777326cf8366f071291d87`  
		Last Modified: Mon, 05 Oct 2026 21:57:35 GMT  
		Size: 10.1 MB (10059004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6ec39e02310be7843435b166a28cd7e7a717363b95f571518f504deaec29ec4`  
		Last Modified: Mon, 05 Oct 2026 21:57:34 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2614cb15bedf011a1d6006ea612b689fd6eeffef6bc39c02da51e5cc648dbf8`  
		Last Modified: Mon, 05 Oct 2026 21:57:35 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-8` - unknown; unknown

```console
$ docker pull maven@sha256:a352e4ea617a7c97188bf91de5c7f9c48eb2bd94fbea6282f67153a6f64bfeaa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6645648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:763b9ac259b718a090c1d5b4cefdeeef379abcd663526a7a89daad8fa294154a`

```dockerfile
```

-	Layers:
	-	`sha256:8158b5b852d0ce69ca9bde460850063e9bb407cffe1ef6917225bc9339de5adc`  
		Last Modified: Mon, 05 Oct 2026 21:57:35 GMT  
		Size: 6.6 MB (6628355 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f493f3a89da36954b37e40efe329c4325b6de1442ffe2bb054a31a78df4c2ee8`  
		Last Modified: Mon, 05 Oct 2026 21:57:34 GMT  
		Size: 17.3 KB (17293 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-8` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:636391c77d320f99d3d5403f3ba2996a63efc0e7cbe4d822aa32f14370f71cba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.8 MB (343761252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d36f644d9f06a5b53f2194c0ccefa0778e88a51c730a86df7899e670fd5aa1d1`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 05 Oct 2026 18:28:31 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:28:31 GMT
CMD ["/bin/bash"]
# Mon, 05 Oct 2026 21:41:04 GMT
ARG version=1.8.0_504.b04-1
# Mon, 05 Oct 2026 21:41:04 GMT
# ARGS: version=1.8.0_504.b04-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 05 Oct 2026 21:41:04 GMT
ENV LANG=C.UTF-8
# Mon, 05 Oct 2026 21:41:04 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
# Mon, 05 Oct 2026 21:53:45 GMT
RUN yum install -y tar which gzip # TODO remove # buildkit
# Mon, 05 Oct 2026 21:53:47 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Mon, 05 Oct 2026 21:53:47 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Mon, 05 Oct 2026 21:53:47 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Mon, 05 Oct 2026 21:53:47 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Mon, 05 Oct 2026 21:53:47 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Mon, 05 Oct 2026 21:53:47 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 05 Oct 2026 21:53:47 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Mon, 05 Oct 2026 21:53:47 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Mon, 05 Oct 2026 21:53:47 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Mon, 05 Oct 2026 21:53:47 GMT
ARG USER_HOME_DIR=/root
# Mon, 05 Oct 2026 21:53:47 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 05 Oct 2026 21:53:47 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 05 Oct 2026 21:53:47 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:3009834f3cf8cead1d3dea9d3cbebc711c021c4aed04759be014247a0c3181e7`  
		Last Modified: Thu, 01 Oct 2026 02:22:31 GMT  
		Size: 53.5 MB (53504398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad6e7bba5fb3aba30446fc6a6ef9e962c27e11b8642caa05853cd1540de6d2a3`  
		Last Modified: Mon, 05 Oct 2026 21:41:24 GMT  
		Size: 118.0 MB (117976897 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4bd502abfd2be798f898728dbb8ee1ebc0b5c2ca54a39a82e2cbc655d5b5c85`  
		Last Modified: Mon, 05 Oct 2026 21:54:10 GMT  
		Size: 148.5 MB (148467889 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e394e8f65a7ec81f6cc44307b8fa510468fe34d3a858f6bef9007a4aa9fbd39`  
		Last Modified: Mon, 05 Oct 2026 21:54:07 GMT  
		Size: 13.8 MB (13752042 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f35fded324c6c43baa0e68ab2a1f95521422c054cea0acee7986bb14fd70b4fe`  
		Last Modified: Mon, 05 Oct 2026 21:54:07 GMT  
		Size: 10.1 MB (10059019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e875f27fa357b6b07b08ba5078f9439cc81bcae711f380d196e3c820db3a0fb8`  
		Last Modified: Mon, 05 Oct 2026 21:54:06 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0114dcf87e34e6c5656783b0821947b2e1a0bedb6a5b4c7e7b15db199bb44c2e`  
		Last Modified: Mon, 05 Oct 2026 21:54:07 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-8` - unknown; unknown

```console
$ docker pull maven@sha256:605e0701c3f8e385691ffe8b0c8388df2e733187213594d410d00882fa22be58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6646122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:109adba9ed282db318ce544ff10616d76f21387f32aa239b221924e82a83c4b5`

```dockerfile
```

-	Layers:
	-	`sha256:0c93191eb1fefad95345a5a3479ef6e1dbe8f460fc3eff0bc8f4534a12369749`  
		Last Modified: Mon, 05 Oct 2026 21:54:07 GMT  
		Size: 6.6 MB (6628645 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ce5d959e60c8779b498c50b1030fe717e85737d9c6bb4786f9fa783eb1e21811`  
		Last Modified: Mon, 05 Oct 2026 21:54:06 GMT  
		Size: 17.5 KB (17477 bytes)  
		MIME: application/vnd.in-toto+json
