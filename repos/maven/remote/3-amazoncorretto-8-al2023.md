## `maven:3-amazoncorretto-8-al2023`

```console
$ docker pull maven@sha256:8ef26411b72c1591cbb3ce682291b0fa22ef6f325c4022e3d62f1393fcc90e30
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-8-al2023` - linux; amd64

```console
$ docker pull maven@sha256:32118d32849bf6abd3d312c7f7927774d6843e94cd1bd450a0cd2865ca09bdab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **356.9 MB (356909937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:402a34eef38763c083208a6eb9ff6a22650b86730bf7f40d3f626183719b2d4b`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 02 Nov 2026 19:55:48 GMT
COPY /rootfs/ / # buildkit
# Mon, 02 Nov 2026 19:55:48 GMT
CMD ["/bin/bash"]
# Mon, 02 Nov 2026 20:10:17 GMT
ARG version=1.8.0_512.b09-1
# Mon, 02 Nov 2026 20:10:17 GMT
# ARGS: version=1.8.0_512.b09-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 02 Nov 2026 20:10:17 GMT
ENV LANG=C.UTF-8
# Mon, 02 Nov 2026 20:10:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
# Mon, 02 Nov 2026 20:46:40 GMT
RUN yum install -y tar which gzip # TODO remove # buildkit
# Mon, 02 Nov 2026 20:46:42 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Mon, 02 Nov 2026 20:46:42 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Mon, 02 Nov 2026 20:46:42 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Mon, 02 Nov 2026 20:46:42 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Mon, 02 Nov 2026 20:46:42 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Mon, 02 Nov 2026 20:46:42 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 02 Nov 2026 20:46:42 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Mon, 02 Nov 2026 20:46:42 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Mon, 02 Nov 2026 20:46:42 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Mon, 02 Nov 2026 20:46:42 GMT
ARG USER_HOME_DIR=/root
# Mon, 02 Nov 2026 20:46:42 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 02 Nov 2026 20:46:42 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 02 Nov 2026 20:46:42 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:36d0e51e1ea56325505d833f7d87567b6720c396e9a5742de0f157b063545163`  
		Last Modified: Sat, 31 Oct 2026 02:35:05 GMT  
		Size: 54.6 MB (54569615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca5aba6dc371daa9da2004e0a53435c08f9213fbe24e20088ad0b5728197bf0d`  
		Last Modified: Mon, 02 Nov 2026 20:10:36 GMT  
		Size: 118.1 MB (118121188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a15bf3d8efc67a2a9b4af4df48e5ae9b7a5eb63ff1ec93da856d53aab82146c`  
		Last Modified: Mon, 02 Nov 2026 20:47:01 GMT  
		Size: 160.6 MB (160647884 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d844e0f12c8afb5c00a1ad77522a06ec63ce4e32fac4aeb35743a4bbe1ebfde`  
		Last Modified: Mon, 02 Nov 2026 20:46:58 GMT  
		Size: 13.5 MB (13511228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7318652b35afa4dd3643cbcd532e198234a7009674c1223050e8a1f221345ef5`  
		Last Modified: Mon, 02 Nov 2026 20:46:58 GMT  
		Size: 10.1 MB (10059012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2af7902006c0b12989d260373ff61e1886fe9cbec3e7bb1bff88ca5a36ff6bbc`  
		Last Modified: Mon, 02 Nov 2026 20:46:58 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e01e340a02cabfdc1a8c4a06ea21ebcc5f2721395088441b13f1cc79dae0751`  
		Last Modified: Mon, 02 Nov 2026 20:46:59 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-8-al2023` - unknown; unknown

```console
$ docker pull maven@sha256:e6a1f7bcabe338900303c88efc7c5643a82f18d555780ceeac7ba93dc40c8df2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6646308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b058811eaa12b4c3b10cacef6dd68cb66fb5a010573079915df884ac5f2d71a`

```dockerfile
```

-	Layers:
	-	`sha256:45cad8d26744979bf6e93d94b7707e7faddb67e018005787f4d85e1b9412f714`  
		Last Modified: Mon, 02 Nov 2026 20:46:58 GMT  
		Size: 6.6 MB (6629015 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:467f033f1f5b7b6ea56473b00849b12f4d229515f13f8d03a25572f4b1a29959`  
		Last Modified: Mon, 02 Nov 2026 20:46:58 GMT  
		Size: 17.3 KB (17293 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-8-al2023` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:d317f290ce9aabbf6f81788aa54d05e091320ce1a8fcb21a6393b7f39c97915f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **354.0 MB (354000440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82bc9c2778ae56cd4a571f36efc67a1bbcc2c686de7e2b2ac93778c3a367cdb2`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 02 Nov 2026 19:55:47 GMT
COPY /rootfs/ / # buildkit
# Mon, 02 Nov 2026 19:55:47 GMT
CMD ["/bin/bash"]
# Mon, 02 Nov 2026 20:07:55 GMT
ARG version=1.8.0_512.b09-1
# Mon, 02 Nov 2026 20:07:55 GMT
# ARGS: version=1.8.0_512.b09-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 02 Nov 2026 20:07:55 GMT
ENV LANG=C.UTF-8
# Mon, 02 Nov 2026 20:07:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
# Mon, 02 Nov 2026 20:46:47 GMT
RUN yum install -y tar which gzip # TODO remove # buildkit
# Mon, 02 Nov 2026 20:46:49 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Mon, 02 Nov 2026 20:46:49 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Mon, 02 Nov 2026 20:46:49 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Mon, 02 Nov 2026 20:46:49 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Mon, 02 Nov 2026 20:46:49 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Mon, 02 Nov 2026 20:46:49 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 02 Nov 2026 20:46:49 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Mon, 02 Nov 2026 20:46:49 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Mon, 02 Nov 2026 20:46:49 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Mon, 02 Nov 2026 20:46:49 GMT
ARG USER_HOME_DIR=/root
# Mon, 02 Nov 2026 20:46:49 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 02 Nov 2026 20:46:49 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 02 Nov 2026 20:46:49 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:c1eee8f81fa5e953bb6eab0ff6f612967f0ef8b1dc9fac3cb2319b1021f7a245`  
		Last Modified: Sat, 31 Oct 2026 02:35:03 GMT  
		Size: 53.5 MB (53456123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f94f3ff733b7626cb8c5fc7a06cc98cc9abb9375be277d01b91738cc498b2f8a`  
		Last Modified: Mon, 02 Nov 2026 20:08:14 GMT  
		Size: 118.0 MB (118013401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fc084473dbdd575b3b890f35f06ea17dbe98f3a943b480234163be9d6d31f5b`  
		Last Modified: Mon, 02 Nov 2026 20:47:10 GMT  
		Size: 158.7 MB (158716839 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3702487242e9bd5e43b1d4a1293cd142b3d1aead39e46eb31fc501c1265191ce`  
		Last Modified: Mon, 02 Nov 2026 20:47:07 GMT  
		Size: 13.8 MB (13754055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e18099a362ca79d3570fc5a1fdc1a099d772ff4c6f0679910524f17ac538f06e`  
		Last Modified: Mon, 02 Nov 2026 20:47:07 GMT  
		Size: 10.1 MB (10059012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb057ac540743e979901d9e60f065e4fa403ec6a302bebd045752a3f1c8f267d`  
		Last Modified: Mon, 02 Nov 2026 20:47:06 GMT  
		Size: 853.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e624cdbc9ede6f56b880e50f62629b8f48c5505ddccb5f1869bae87fb3c0399`  
		Last Modified: Mon, 02 Nov 2026 20:47:08 GMT  
		Size: 157.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-8-al2023` - unknown; unknown

```console
$ docker pull maven@sha256:6b28e4134fd2e84b4127b191807a3a2d426d4678dbe58a86ddc81a5c91b990fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6646782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e5e0a4f5ea01ee2db675e329ab33c83fbac30499815a5ae45eb380349d40ef8`

```dockerfile
```

-	Layers:
	-	`sha256:3085b4931c677df935ff63d3bff4f3897b77a519f79c807c5d73c4e808bd6542`  
		Last Modified: Mon, 02 Nov 2026 20:47:07 GMT  
		Size: 6.6 MB (6629305 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b8dddd7109d442736d0c6741fc39ba763c60b03f68bd24960d97a01d7e1e3917`  
		Last Modified: Mon, 02 Nov 2026 20:47:06 GMT  
		Size: 17.5 KB (17477 bytes)  
		MIME: application/vnd.in-toto+json
