## `maven:3-amazoncorretto-11-al2023`

```console
$ docker pull maven@sha256:0fb070644095d914030628a27b07391dfcd5ce2aa7ea51032685a20367d3dd9c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-11-al2023` - linux; amd64

```console
$ docker pull maven@sha256:277f4e694682e1bcf6d508eeac9d204d1a83eadac92c4efe7b3f0ab467b14b39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **386.6 MB (386601941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8cca37155077def280d3b3882ab43b2b1be891fe1f3a175c165051a56869f4a6`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 23 Oct 2026 00:41:03 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:41:03 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 18:07:50 GMT
ARG version=11.0.33.0.9-1
# Fri, 23 Oct 2026 18:07:50 GMT
ARG resource_version=11.0.33.0.9
# Fri, 23 Oct 2026 18:07:50 GMT
# ARGS: version=11.0.33.0.9-1 resource_version=11.0.33.0.9
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-jmods-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 23 Oct 2026 18:07:50 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 18:07:50 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
# Fri, 23 Oct 2026 18:22:30 GMT
RUN yum install -y tar which gzip # TODO remove # buildkit
# Fri, 23 Oct 2026 18:22:31 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Fri, 23 Oct 2026 18:22:31 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 23 Oct 2026 18:22:31 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 23 Oct 2026 18:22:31 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 23 Oct 2026 18:22:31 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 23 Oct 2026 18:22:31 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 23 Oct 2026 18:22:31 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 23 Oct 2026 18:22:32 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 23 Oct 2026 18:22:32 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 23 Oct 2026 18:22:32 GMT
ARG USER_HOME_DIR=/root
# Fri, 23 Oct 2026 18:22:32 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 23 Oct 2026 18:22:32 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 23 Oct 2026 18:22:32 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:da3e7a9e0d7ce8bd2e34f464f7fc47c97dde7880b26078690ed76ef5809d8b69`  
		Last Modified: Thu, 22 Oct 2026 01:38:41 GMT  
		Size: 54.6 MB (54648920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0cdf13232737ea23018f769b58a91e67ebcac774b5a3e68b96168c430205496`  
		Last Modified: Fri, 23 Oct 2026 18:08:12 GMT  
		Size: 153.5 MB (153540316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32209669ff2b73ae804ddcee805d5ef298e78bc27de75f7ede74dcc931de513f`  
		Last Modified: Fri, 23 Oct 2026 18:22:51 GMT  
		Size: 154.8 MB (154824748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d36b7da9d5e6a602ae479de214e5e5019611bdabf1592b4dc7f7295d00acac8`  
		Last Modified: Fri, 23 Oct 2026 18:22:48 GMT  
		Size: 13.5 MB (13527937 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5d6751c6cbbc3d1c555fc3b11534de791d4f0b9b0bb6f7aab84bd554f11b33f`  
		Last Modified: Fri, 23 Oct 2026 18:22:48 GMT  
		Size: 10.1 MB (10059013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8289d6393d65baaa4bbb4002546f9901ec5b938349f39ff3352eac06a4027b20`  
		Last Modified: Fri, 23 Oct 2026 18:22:47 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bb8409f1e4fe352090c39bcf51eddee55d7c7991cad8d15595cb10d5cfd44fd`  
		Last Modified: Fri, 23 Oct 2026 18:22:48 GMT  
		Size: 157.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-11-al2023` - unknown; unknown

```console
$ docker pull maven@sha256:a80ecf9ceaef1c88e235f5faf8ab4843f9a488a0ab6bfc8458ec1649e36629e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6293922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15b11dc0802fe170fab000a7a8a8f76984d2597e94e0638a794214d4d4e18e43`

```dockerfile
```

-	Layers:
	-	`sha256:f627994b730186f675268f8e8458bb85643f2a880968566aebba8b14f1fdb04f`  
		Last Modified: Fri, 23 Oct 2026 18:22:47 GMT  
		Size: 6.3 MB (6276619 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e2378a4788f1cb91aac4e417a7c1e6004c441be999892674c882a38a971d8d69`  
		Last Modified: Fri, 23 Oct 2026 18:22:47 GMT  
		Size: 17.3 KB (17303 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-11-al2023` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:4d7e665c54d82e5224defc2a699fdc3df95d8442c11947c28f467b92ac850059
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **382.4 MB (382415615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fb148eb59eb1e6464ac7278eb19bd280d0887c69ee513107e02d1460c2606be`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 23 Oct 2026 00:40:43 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:40:43 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 18:07:51 GMT
ARG version=11.0.33.0.9-1
# Fri, 23 Oct 2026 18:07:51 GMT
ARG resource_version=11.0.33.0.9
# Fri, 23 Oct 2026 18:07:51 GMT
# ARGS: version=11.0.33.0.9-1 resource_version=11.0.33.0.9
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-jmods-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 23 Oct 2026 18:07:51 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 18:07:51 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
# Fri, 23 Oct 2026 18:22:21 GMT
RUN yum install -y tar which gzip # TODO remove # buildkit
# Fri, 23 Oct 2026 18:22:23 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Fri, 23 Oct 2026 18:22:24 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 23 Oct 2026 18:22:24 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 23 Oct 2026 18:22:24 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 23 Oct 2026 18:22:24 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 23 Oct 2026 18:22:24 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 23 Oct 2026 18:22:24 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 23 Oct 2026 18:22:24 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 23 Oct 2026 18:22:24 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 23 Oct 2026 18:22:24 GMT
ARG USER_HOME_DIR=/root
# Fri, 23 Oct 2026 18:22:24 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 23 Oct 2026 18:22:24 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 23 Oct 2026 18:22:24 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:b9de6aa56dd75608aa129f8d7c4af23dae5b1bb2a5a2edb4e9acfd307a0af336`  
		Last Modified: Thu, 22 Oct 2026 02:52:33 GMT  
		Size: 53.5 MB (53529316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:061cac72722a6f12ac230f39d106f99cd2e7ea87aeee474d0e7621a017063d3b`  
		Last Modified: Fri, 23 Oct 2026 18:08:13 GMT  
		Size: 152.1 MB (152123166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53bce7698c5e57f7d843036cf48fcaf5422ec220e1c0e568f2a815f0e0024432`  
		Last Modified: Fri, 23 Oct 2026 18:22:44 GMT  
		Size: 152.9 MB (152931787 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a7f73aab692929c7b90920bcb5c3f6a3c474cd634847df9f93fa70c71807824`  
		Last Modified: Fri, 23 Oct 2026 18:22:41 GMT  
		Size: 13.8 MB (13771329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a88f5f48903e05e78a286b04c726d33e78fe2109febbbf6589d8ed1822229af`  
		Last Modified: Fri, 23 Oct 2026 18:22:41 GMT  
		Size: 10.1 MB (10059007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8857c56dfcf61864ae9c09a859e1f2c689305cdf1f8e04fe78349c67e4b6b9e4`  
		Last Modified: Fri, 23 Oct 2026 18:22:40 GMT  
		Size: 852.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:463519b2c199995564a8111df63fc8884b749efd444f292b7d135668be1833ef`  
		Last Modified: Fri, 23 Oct 2026 18:22:42 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-11-al2023` - unknown; unknown

```console
$ docker pull maven@sha256:53d4f93b4ac8336d947c763315d0c9883eb0383c58ab214fb6478eb30cd2b1cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6293916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa3c1e47584eb9d7fc65574dae19a7fa192a4e7b99aa5652d2d576847f55ff84`

```dockerfile
```

-	Layers:
	-	`sha256:171bd6ac82eeef6ccaff31de8c415d518489eaef52a55742175c77d7fc27d321`  
		Last Modified: Fri, 23 Oct 2026 18:22:41 GMT  
		Size: 6.3 MB (6276429 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:034085d699d03c14e76afdab774adbf530c66209ca087db8804ca63784918861`  
		Last Modified: Fri, 23 Oct 2026 18:22:40 GMT  
		Size: 17.5 KB (17487 bytes)  
		MIME: application/vnd.in-toto+json
