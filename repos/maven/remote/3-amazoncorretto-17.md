## `maven:3-amazoncorretto-17`

```console
$ docker pull maven@sha256:d20c3714d3a00c33c401e65ed10c05b06a44fbf5d8be8e6f58fd79ce404e4e8b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-17` - linux; amd64

```console
$ docker pull maven@sha256:63bb1f75c53c8ef3c92758300bd7c1ed2cbd472c6442f3fcea65be4cedd06af7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **390.2 MB (390240310 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eacb2873e5dbebcbe424c230c178fc25bd7f18cbf295516a669b48a2f6717c4c`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 23 Oct 2026 00:41:03 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:41:03 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 01:10:00 GMT
ARG version=17.0.20.13-1
# Fri, 23 Oct 2026 01:10:00 GMT
ARG package_version=1
# Fri, 23 Oct 2026 01:10:00 GMT
# ARGS: version=17.0.20.13-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 23 Oct 2026 01:10:00 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 01:10:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
# Fri, 23 Oct 2026 02:11:34 GMT
RUN yum install -y tar which gzip # TODO remove # buildkit
# Fri, 23 Oct 2026 02:11:36 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Fri, 23 Oct 2026 02:11:36 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 23 Oct 2026 02:11:36 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 23 Oct 2026 02:11:36 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 23 Oct 2026 02:11:36 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 23 Oct 2026 02:11:36 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 23 Oct 2026 02:11:36 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 23 Oct 2026 02:11:36 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 23 Oct 2026 02:11:36 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 23 Oct 2026 02:11:36 GMT
ARG USER_HOME_DIR=/root
# Fri, 23 Oct 2026 02:11:36 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 23 Oct 2026 02:11:36 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 23 Oct 2026 02:11:36 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:da3e7a9e0d7ce8bd2e34f464f7fc47c97dde7880b26078690ed76ef5809d8b69`  
		Last Modified: Thu, 22 Oct 2026 01:38:41 GMT  
		Size: 54.6 MB (54648920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c7b79035ffc412a6874ed4a9d4605e12bed37000174652a74018d15cccd9c7e`  
		Last Modified: Fri, 23 Oct 2026 01:10:20 GMT  
		Size: 157.2 MB (157175129 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a75e538624e6e1e4fec5641b23b165bd21d065d378f0a6f06c2aceb3feff3590`  
		Last Modified: Fri, 23 Oct 2026 02:11:55 GMT  
		Size: 154.8 MB (154826288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38cd16618ad498df9243ec41515928e1da0914ce9ef50856a285dfb01c4edd5b`  
		Last Modified: Fri, 23 Oct 2026 02:11:52 GMT  
		Size: 13.5 MB (13529946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af4f1634d918e2b9e25618f331aace81f99b442f316d0e12a60e0f1a84bf7b71`  
		Last Modified: Fri, 23 Oct 2026 02:11:52 GMT  
		Size: 10.1 MB (10059018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5714f243482915b01b2e44008ce1586ff1ee15ad5d776bca1860caeaee90dbae`  
		Last Modified: Fri, 23 Oct 2026 02:11:52 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb3dbf0cd337ace21241241ea2df0efb2e278e5ea0ac14dedc6dfe554bf4333b`  
		Last Modified: Fri, 23 Oct 2026 02:11:53 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-17` - unknown; unknown

```console
$ docker pull maven@sha256:fd3ebdc2d32d5edec29e67173a393a27e231c9aa56919d682f79887c59768027
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6269235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fa150c791bd7b681abe284118f434005ef4c944fd206338be74697c40f4608d`

```dockerfile
```

-	Layers:
	-	`sha256:e6cb61b18d0533a526400d0d835f647d2a3410a1fba88fe7d582e37b26a41cde`  
		Last Modified: Fri, 23 Oct 2026 02:11:52 GMT  
		Size: 6.3 MB (6251932 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bb9a77c5e7cda9323772515722e9f7bd3affff5f79db1ebbfaa225da27ac53af`  
		Last Modified: Fri, 23 Oct 2026 02:11:51 GMT  
		Size: 17.3 KB (17303 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-17` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:8d5080d4208d49b8c96b0d8751611b8a18328671e9bd5da1aa2c39b4e65645e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **386.3 MB (386272585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48342df538279dace835ed4b7da10c054d88cf08ba0c04c80afa45bb9029ea2e`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 23 Oct 2026 00:40:43 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:40:43 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 01:10:08 GMT
ARG version=17.0.20.13-1
# Fri, 23 Oct 2026 01:10:08 GMT
ARG package_version=1
# Fri, 23 Oct 2026 01:10:08 GMT
# ARGS: version=17.0.20.13-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 23 Oct 2026 01:10:08 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 01:10:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
# Fri, 23 Oct 2026 02:11:54 GMT
RUN yum install -y tar which gzip # TODO remove # buildkit
# Fri, 23 Oct 2026 02:11:55 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Fri, 23 Oct 2026 02:11:56 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 23 Oct 2026 02:11:56 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 23 Oct 2026 02:11:56 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 23 Oct 2026 02:11:56 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 23 Oct 2026 02:11:56 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 23 Oct 2026 02:11:56 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 23 Oct 2026 02:11:56 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 23 Oct 2026 02:11:56 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 23 Oct 2026 02:11:56 GMT
ARG USER_HOME_DIR=/root
# Fri, 23 Oct 2026 02:11:56 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 23 Oct 2026 02:11:56 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 23 Oct 2026 02:11:56 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:b9de6aa56dd75608aa129f8d7c4af23dae5b1bb2a5a2edb4e9acfd307a0af336`  
		Last Modified: Thu, 22 Oct 2026 02:52:33 GMT  
		Size: 53.5 MB (53529316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:965bddf223d9fee8acbc70f35723cc95a5be9daab0ef3af34a23bff9da1b1d9f`  
		Last Modified: Fri, 23 Oct 2026 01:10:31 GMT  
		Size: 156.0 MB (155978532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:830e693cb3ac0dbab217943d1d4081eea8318a7a321f20e1ace412f1947868ee`  
		Last Modified: Fri, 23 Oct 2026 02:12:16 GMT  
		Size: 152.9 MB (152932618 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7b4fa47b46b3550f04cdda1d36edfccc28186de293818288bd3410a477fd590`  
		Last Modified: Fri, 23 Oct 2026 02:12:13 GMT  
		Size: 13.8 MB (13772102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40f6f00a167e4e38294491c783bb58201fa6d12a3e8846972ab570e310e6848f`  
		Last Modified: Fri, 23 Oct 2026 02:12:13 GMT  
		Size: 10.1 MB (10059008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd35f714e9b50fe022098b920bc614513c2dd4fff1ec41368a140e157ff462b7`  
		Last Modified: Fri, 23 Oct 2026 02:12:12 GMT  
		Size: 852.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ade375ff694ef6dd1d1b736c8fa2ee81f8d7d69df7948df5314db3098af387b7`  
		Last Modified: Fri, 23 Oct 2026 02:12:13 GMT  
		Size: 157.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-17` - unknown; unknown

```console
$ docker pull maven@sha256:3f8d9fd2cfc4263113cdcae76fb85dea7bcba1ff9d3881eac7af26b71ad7b3d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6268386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a00b551045ab844e41ef4c47433193b6fefbe15974ee9cb39670bd4d64561d5`

```dockerfile
```

-	Layers:
	-	`sha256:66d52bc9af3e296a3547a4f2603722425675646277d821471023d62ef8a1aa49`  
		Last Modified: Fri, 23 Oct 2026 02:12:13 GMT  
		Size: 6.3 MB (6250899 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dae0303516e7103ffda59c569bad3445d8d870404e4f796053dec63e5e4166fb`  
		Last Modified: Fri, 23 Oct 2026 02:12:12 GMT  
		Size: 17.5 KB (17487 bytes)  
		MIME: application/vnd.in-toto+json
