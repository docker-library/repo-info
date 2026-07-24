## `maven:3-amazoncorretto-8`

```console
$ docker pull maven@sha256:c43d9dbd676b684ef4f6b8114d278ec67309c7f4a80bc7e2a8a936dec019eaa8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-8` - linux; amd64

```console
$ docker pull maven@sha256:fc99062ec5533845fd2d3b0e9942e339d629277ecb03a64b6dc48092b3896827
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **326.1 MB (326101300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b212ee32a23fc5bb414011f5ce813009923c15f4aefaca8d70e1b038edc022b3`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:23 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:23 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:10:47 GMT
ARG version=1.8.0_502.b07-1
# Thu, 23 Jul 2026 23:10:47 GMT
# ARGS: version=1.8.0_502.b07-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 23 Jul 2026 23:10:47 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:10:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
# Fri, 24 Jul 2026 00:16:20 GMT
RUN yum install -y tar which gzip # TODO remove # buildkit
# Fri, 24 Jul 2026 00:16:21 GMT
RUN yum install -y openssh-clients # buildkit
# Fri, 24 Jul 2026 00:16:21 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 24 Jul 2026 00:16:21 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 24 Jul 2026 00:16:21 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 24 Jul 2026 00:16:21 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 24 Jul 2026 00:16:21 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 24 Jul 2026 00:16:21 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 24 Jul 2026 00:16:21 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 24 Jul 2026 00:16:21 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 24 Jul 2026 00:16:21 GMT
ARG USER_HOME_DIR=/root
# Fri, 24 Jul 2026 00:16:21 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 24 Jul 2026 00:16:21 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 24 Jul 2026 00:16:21 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:3b5eb82da667b3e3ec6bc9d0b202bfba5f45c665af1ff4c33b4d24e971967e96`  
		Last Modified: Fri, 10 Jul 2026 21:57:49 GMT  
		Size: 54.6 MB (54574264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfe57f5f97fde731751f395e310a2724bdce42a4757204a447a89e087c3e4198`  
		Last Modified: Thu, 23 Jul 2026 23:11:06 GMT  
		Size: 118.1 MB (118079398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91c1f5d2ebed454129453c94425f9a9a44a78f356c8a41d4acfdc395996ce98c`  
		Last Modified: Fri, 24 Jul 2026 00:16:40 GMT  
		Size: 131.6 MB (131588551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7aa64b69b24821011be038a6a95567ff8bd69957c531aebce2312a723005e1c`  
		Last Modified: Fri, 24 Jul 2026 00:16:37 GMT  
		Size: 12.5 MB (12498107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:128ad4d3aa0c7fc3678cb0e71a4efdd652252d6ac1ed010ddab085c283142e63`  
		Last Modified: Fri, 24 Jul 2026 00:16:37 GMT  
		Size: 9.4 MB (9359968 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8e61235b8612c1d2283b1acd8ab4cd9b3c20f3166d055d503f8a5c5ed0773eb`  
		Last Modified: Fri, 24 Jul 2026 00:16:36 GMT  
		Size: 854.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68fd01fbefa3ca089be0b91e7ac65b5aa789cfe00d447068c7766481113f1a45`  
		Last Modified: Fri, 24 Jul 2026 00:16:38 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-8` - unknown; unknown

```console
$ docker pull maven@sha256:cebe9c3374c44b3d27cdab7d5d3ea214d240abab66d225248a0a7334789acd47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6604399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bb28c34fb2c99ba15154465d78f0999dbf3db56cb9924f814c67d3bf1690481`

```dockerfile
```

-	Layers:
	-	`sha256:6102c55c1befb4f4b575665205fd5656bb2b4489f283cadc44c5986f02c6966d`  
		Last Modified: Fri, 24 Jul 2026 00:16:37 GMT  
		Size: 6.6 MB (6588207 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3425ce33caab550bd31c3f93cf5d231e22f44991e92c74edf1309e509326b5e2`  
		Last Modified: Fri, 24 Jul 2026 00:16:36 GMT  
		Size: 16.2 KB (16192 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-8` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:1bd364c5eb77a7abce2f7e23a15e3b2668124f3418d27b9d0c45ea052c1d34e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **323.8 MB (323813968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c930c8908bd75d56a32c57cd87d706d063b68d865ba93bc60bf015408f7fe419`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:13 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:13 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:12:25 GMT
ARG version=1.8.0_502.b07-1
# Thu, 23 Jul 2026 23:12:25 GMT
# ARGS: version=1.8.0_502.b07-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 23 Jul 2026 23:12:25 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:12:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
# Fri, 24 Jul 2026 00:16:30 GMT
RUN yum install -y tar which gzip # TODO remove # buildkit
# Fri, 24 Jul 2026 00:16:32 GMT
RUN yum install -y openssh-clients # buildkit
# Fri, 24 Jul 2026 00:16:32 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 24 Jul 2026 00:16:32 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 24 Jul 2026 00:16:32 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 24 Jul 2026 00:16:32 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 24 Jul 2026 00:16:32 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 24 Jul 2026 00:16:32 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 24 Jul 2026 00:16:32 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 24 Jul 2026 00:16:32 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 24 Jul 2026 00:16:32 GMT
ARG USER_HOME_DIR=/root
# Fri, 24 Jul 2026 00:16:32 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 24 Jul 2026 00:16:32 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 24 Jul 2026 00:16:32 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:6e12116aae4fd69e40f0f0c465aeb7f71b0d7db5d37e40fced028a576a31ca9e`  
		Last Modified: Sat, 11 Jul 2026 02:19:28 GMT  
		Size: 53.4 MB (53449232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32e6fc3bc6b9cb04d504bc7d30c32ed9dcdcc8250eb8cff05726547a63efcbee`  
		Last Modified: Thu, 23 Jul 2026 23:12:45 GMT  
		Size: 118.0 MB (117965689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cdbc2c164098004f3c89c31d98d6e9fe4de2baa608587ac5b05387ce0dd35a9`  
		Last Modified: Fri, 24 Jul 2026 00:16:53 GMT  
		Size: 130.3 MB (130289383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0859341da387aeba75e4fd5981a29f76f2384b0a884df825fbd2ef6ec91e3aaf`  
		Last Modified: Fri, 24 Jul 2026 00:16:50 GMT  
		Size: 12.7 MB (12748675 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e754b2d792f66ce5a2ba47f243ad20f268fefc0c26243ef1c2bbbdd477da1dc`  
		Last Modified: Fri, 24 Jul 2026 00:16:50 GMT  
		Size: 9.4 MB (9359976 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba460b3ba4869f19f680576e02a8fc669d8cbae5bdd9c5cfe8a321f7f4e6836e`  
		Last Modified: Fri, 24 Jul 2026 00:16:49 GMT  
		Size: 854.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56aa08dc9dbe0d99fc8678678c34ba39fcc9e883ebc1ec321e930f6958ae4430`  
		Last Modified: Fri, 24 Jul 2026 00:16:51 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-8` - unknown; unknown

```console
$ docker pull maven@sha256:08b4b2210cd686c7ccc6e8d2e2b76ef38c3af91e17015fa0166b2169c1227c93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6604801 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54903c5a9f0066b22573fa1a065aafc30cef98f21c010b9e3c49d0bffd97436d`

```dockerfile
```

-	Layers:
	-	`sha256:989b79350554907865a0594aa8634c4a5ceee1b4ae2b5f789e1d57a67ef9cf5a`  
		Last Modified: Fri, 24 Jul 2026 00:16:50 GMT  
		Size: 6.6 MB (6588461 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8cf308491d373107b54278080c2a896fa88b7625da3808fd72f15f4f59173465`  
		Last Modified: Fri, 24 Jul 2026 00:16:49 GMT  
		Size: 16.3 KB (16340 bytes)  
		MIME: application/vnd.in-toto+json
