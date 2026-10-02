## `maven:3-amazoncorretto-11-al2023`

```console
$ docker pull maven@sha256:ddd1ae1cdc4021257a87c1f5be534ddfd330a8d37d48c885976d8802b7c16acd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-11-al2023` - linux; amd64

```console
$ docker pull maven@sha256:ef3c4c3c2ab368e64f880906a13cdc0ef4be38944ae8cd285f21f3e681f42ba1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **379.3 MB (379277734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7af0cecf679068dacd9fd4126f231433d73baf7009c03324299f930c575b5d48`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 28 Sep 2026 19:59:36 GMT
COPY /rootfs/ / # buildkit
# Mon, 28 Sep 2026 19:59:36 GMT
CMD ["/bin/bash"]
# Mon, 28 Sep 2026 20:13:35 GMT
ARG version=11.0.32.12-1
# Mon, 28 Sep 2026 20:13:35 GMT
# ARGS: version=11.0.32.12-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-jmods-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 28 Sep 2026 20:13:35 GMT
ENV LANG=C.UTF-8
# Mon, 28 Sep 2026 20:13:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
# Fri, 02 Oct 2026 03:41:57 GMT
RUN yum install -y tar which gzip # TODO remove # buildkit
# Fri, 02 Oct 2026 03:41:59 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Fri, 02 Oct 2026 03:41:59 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 02 Oct 2026 03:41:59 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 02 Oct 2026 03:41:59 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 02 Oct 2026 03:41:59 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 02 Oct 2026 03:41:59 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 02 Oct 2026 03:41:59 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 02 Oct 2026 03:41:59 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 02 Oct 2026 03:41:59 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 02 Oct 2026 03:41:59 GMT
ARG USER_HOME_DIR=/root
# Fri, 02 Oct 2026 03:41:59 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 02 Oct 2026 03:41:59 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 02 Oct 2026 03:41:59 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:3ee87b1055c51d2ac7dc8988b8fcd770985201b17d5a14a7907e4b854064f5ca`  
		Last Modified: Sat, 19 Sep 2026 02:22:41 GMT  
		Size: 54.6 MB (54629827 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e6aa6ac938182a2e6679350ef0a0252a2c30730743f67b9352d63516654bfc4`  
		Last Modified: Mon, 28 Sep 2026 20:13:55 GMT  
		Size: 153.5 MB (153487184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07ce7440b5bd0d416fc9e47167b201c4e4cf4dac20f6fbd5845a175d683e59b8`  
		Last Modified: Fri, 02 Oct 2026 03:42:19 GMT  
		Size: 147.6 MB (147572310 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8315f5748a9dd41f44e1614c4b8dc1b8705f3c73d8e7e00b9a2b2daa30caa4d`  
		Last Modified: Fri, 02 Oct 2026 03:42:16 GMT  
		Size: 13.5 MB (13528395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:addd46217b010d159167ea79d5b20ab7b783247818929a997be6173383f3d5d9`  
		Last Modified: Fri, 02 Oct 2026 03:42:16 GMT  
		Size: 10.1 MB (10059010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a0f10babac039885bf66b181b85bfcb9c251242f57ecfe11d3372588b0e1695`  
		Last Modified: Fri, 02 Oct 2026 03:42:15 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f27b561f2e107284c2ec828adad4cbbac08c374ab0cdf61ba39af94cef437224`  
		Last Modified: Fri, 02 Oct 2026 03:42:17 GMT  
		Size: 157.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-11-al2023` - unknown; unknown

```console
$ docker pull maven@sha256:ba8446a75d9c3a1e3215e60e28c560d284c8d6bd4cc819981e38b228ed83e7d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6293926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:147f14665771ceab9438e293754a2ae6bdbf58c9ae319bde3f28180e37862be5`

```dockerfile
```

-	Layers:
	-	`sha256:4eecb4e136badb47e0c77db74a3a193a1f3c826ca18dfeac2a534a6389e609c2`  
		Last Modified: Fri, 02 Oct 2026 03:42:16 GMT  
		Size: 6.3 MB (6276623 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:97862d6cdfa74ebf37c4ba2ce53594cf726386853b8d9ba550f0c4b1a2261f00`  
		Last Modified: Fri, 02 Oct 2026 03:42:15 GMT  
		Size: 17.3 KB (17303 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-11-al2023` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:b61275261962557234d3dae89bec57ff4618b03f4dd8e80125931d7ab82e4f00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **375.4 MB (375433586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ff25cb4f5c94d85ce62b7aa1785f592457acbfa9e52687cdd394294a6026820`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 28 Sep 2026 19:59:15 GMT
COPY /rootfs/ / # buildkit
# Mon, 28 Sep 2026 19:59:15 GMT
CMD ["/bin/bash"]
# Mon, 28 Sep 2026 20:13:23 GMT
ARG version=11.0.32.12-1
# Mon, 28 Sep 2026 20:13:23 GMT
# ARGS: version=11.0.32.12-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-jmods-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 28 Sep 2026 20:13:23 GMT
ENV LANG=C.UTF-8
# Mon, 28 Sep 2026 20:13:23 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
# Fri, 02 Oct 2026 03:30:34 GMT
RUN yum install -y tar which gzip # TODO remove # buildkit
# Fri, 02 Oct 2026 03:30:36 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Fri, 02 Oct 2026 03:30:36 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 02 Oct 2026 03:30:36 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 02 Oct 2026 03:30:36 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 02 Oct 2026 03:30:36 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 02 Oct 2026 03:30:36 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 02 Oct 2026 03:30:36 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 02 Oct 2026 03:30:36 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 02 Oct 2026 03:30:36 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 02 Oct 2026 03:30:36 GMT
ARG USER_HOME_DIR=/root
# Fri, 02 Oct 2026 03:30:36 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 02 Oct 2026 03:30:36 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 02 Oct 2026 03:30:36 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:f009e1877a8ba7c389c4ac710ae4817f0017fbb8f3bb9e42058d4d18753a3319`  
		Last Modified: Sat, 19 Sep 2026 02:00:18 GMT  
		Size: 53.5 MB (53497787 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf43adb086c58caa9ace08d3db7dae5ffbadd3b50bd5f6998c6106f0e1032b75`  
		Last Modified: Mon, 28 Sep 2026 20:13:44 GMT  
		Size: 152.1 MB (152062610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:feabfe2fcba918bab03978c7f4cdd2a364e9cf101c7989b0a949bdc604ac4b96`  
		Last Modified: Fri, 02 Oct 2026 03:30:57 GMT  
		Size: 146.0 MB (146043033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c30513afcaac9e60dbd7ec90d81bec570ed768f7078f08fbfd10a6fc66b99cca`  
		Last Modified: Fri, 02 Oct 2026 03:30:54 GMT  
		Size: 13.8 MB (13770144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7870429e6acb1cb29e1d18cbe7c6099c7e96babf55d9b50dc223affe7fd5dac1`  
		Last Modified: Fri, 02 Oct 2026 03:30:54 GMT  
		Size: 10.1 MB (10059003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76edcca61aa11e660fbffc24a1ec0f24000cbd8959f358fa2a805447829ffa7c`  
		Last Modified: Fri, 02 Oct 2026 03:30:54 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4dacd5194aa3cf9eb87616ea0dd4a9ee2c471aa60db61cbe5638eb9abb52bdf`  
		Last Modified: Fri, 02 Oct 2026 03:30:55 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-11-al2023` - unknown; unknown

```console
$ docker pull maven@sha256:098afd6bd61036a1f3d82838f7d88568ca5b0547e672a17f9767fb9c432d2e15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6293920 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e8aa45a23f11d25be5e18ca9d94244c219e408c2d88cad0bf3dff91a5ca5187`

```dockerfile
```

-	Layers:
	-	`sha256:c50228b5c85243009cec81bbd0bf8c2b35a41c5a4ec1e121f5a5658bcb4ebe29`  
		Last Modified: Fri, 02 Oct 2026 03:30:54 GMT  
		Size: 6.3 MB (6276433 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:af73868eba69779fc1cc0315c8158d8e76cf70382b3791afeeaafddcfc2ef999`  
		Last Modified: Fri, 02 Oct 2026 03:30:53 GMT  
		Size: 17.5 KB (17487 bytes)  
		MIME: application/vnd.in-toto+json
