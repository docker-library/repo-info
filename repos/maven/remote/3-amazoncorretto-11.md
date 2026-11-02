## `maven:3-amazoncorretto-11`

```console
$ docker pull maven@sha256:d5b976228418ad1050fd218585f495295099fcfe6a7e0adfcdaeab1b1bff8523
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-11` - linux; amd64

```console
$ docker pull maven@sha256:12c31b6389e81eee97fc68036f88c112302f0606f186739680fc9f24309f6514
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **392.4 MB (392365782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de066d0a6ca6e97f66fe2a0a6052c305142c8a3795b403093715c2a94020f515`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 02 Nov 2026 19:55:48 GMT
COPY /rootfs/ / # buildkit
# Mon, 02 Nov 2026 19:55:48 GMT
CMD ["/bin/bash"]
# Mon, 02 Nov 2026 20:10:19 GMT
ARG version=11.0.33.0.10-1
# Mon, 02 Nov 2026 20:10:19 GMT
ARG resource_version=11.0.33.0.10
# Mon, 02 Nov 2026 20:10:19 GMT
# ARGS: version=11.0.33.0.10-1 resource_version=11.0.33.0.10
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-jmods-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 02 Nov 2026 20:10:19 GMT
ENV LANG=C.UTF-8
# Mon, 02 Nov 2026 20:10:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
# Mon, 02 Nov 2026 20:45:50 GMT
RUN yum install -y tar which gzip # TODO remove # buildkit
# Mon, 02 Nov 2026 20:45:52 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Mon, 02 Nov 2026 20:45:52 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Mon, 02 Nov 2026 20:45:52 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Mon, 02 Nov 2026 20:45:52 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Mon, 02 Nov 2026 20:45:52 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Mon, 02 Nov 2026 20:45:52 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 02 Nov 2026 20:45:52 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Mon, 02 Nov 2026 20:45:52 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Mon, 02 Nov 2026 20:45:52 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Mon, 02 Nov 2026 20:45:52 GMT
ARG USER_HOME_DIR=/root
# Mon, 02 Nov 2026 20:45:52 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 02 Nov 2026 20:45:52 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 02 Nov 2026 20:45:52 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:36d0e51e1ea56325505d833f7d87567b6720c396e9a5742de0f157b063545163`  
		Last Modified: Sat, 31 Oct 2026 02:35:05 GMT  
		Size: 54.6 MB (54569615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:296f6bbbf168501d6e6f1b08536116550667e0a5561773a5d06cf9134fad96ad`  
		Last Modified: Mon, 02 Nov 2026 20:10:38 GMT  
		Size: 153.5 MB (153547768 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfd8af0858bc7ab32df1149d3bad01d403c9d93ba7ed6b1b99834ad252c99482`  
		Last Modified: Mon, 02 Nov 2026 20:46:12 GMT  
		Size: 160.7 MB (160653387 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fa945b84a9c0b35c674666add2f152b5ccfa5da38120ba5f1155c3adf313005`  
		Last Modified: Mon, 02 Nov 2026 20:46:09 GMT  
		Size: 13.5 MB (13535002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:700d5fd772487f8d4a9566f5e8f8d2e1b7f64f5e651edfeb7e63d48120f83253`  
		Last Modified: Mon, 02 Nov 2026 20:46:09 GMT  
		Size: 10.1 MB (10059000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27cf16dec7e88d07a1e37c34d95d5a5cee0edfba442d59f801c92964c66b3a6f`  
		Last Modified: Mon, 02 Nov 2026 20:46:08 GMT  
		Size: 852.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f83c1c76bd8f7d39765852cdf15454fef1ea674c89a04088d6043e904f9fa04`  
		Last Modified: Mon, 02 Nov 2026 20:46:09 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-11` - unknown; unknown

```console
$ docker pull maven@sha256:40a93c57b423cfdbc83c650d0a4438dbe700f851071ca9d121b15d683474a375
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6294591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b65e19d932a6f0e4c9300e872ea39c07c6f1e28d82ee55f41e98b5a1119ec214`

```dockerfile
```

-	Layers:
	-	`sha256:bb2307f7bc84f5379f3792da4c3706d642a5c3262f05818830580c3c8aff155b`  
		Last Modified: Mon, 02 Nov 2026 20:46:09 GMT  
		Size: 6.3 MB (6277289 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0f6cc3db91eab96576d79205c0a8385be48ad5cc855559ea8e4172c7c8b43077`  
		Last Modified: Mon, 02 Nov 2026 20:46:08 GMT  
		Size: 17.3 KB (17302 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-11` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:d4a6f3b46ef7f0fb7d2d2df4a31430a2e1c1aab544d444ab41c99185b43020fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **388.1 MB (388123659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48c463b81cefff9e40a2520b1d3430ef0a806b07920a1ac1918485f9cc38d028`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 02 Nov 2026 19:55:47 GMT
COPY /rootfs/ / # buildkit
# Mon, 02 Nov 2026 19:55:47 GMT
CMD ["/bin/bash"]
# Mon, 02 Nov 2026 20:10:18 GMT
ARG version=11.0.33.0.10-1
# Mon, 02 Nov 2026 20:10:18 GMT
ARG resource_version=11.0.33.0.10
# Mon, 02 Nov 2026 20:10:18 GMT
# ARGS: version=11.0.33.0.10-1 resource_version=11.0.33.0.10
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-jmods-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 02 Nov 2026 20:10:18 GMT
ENV LANG=C.UTF-8
# Mon, 02 Nov 2026 20:10:18 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
# Mon, 02 Nov 2026 20:45:57 GMT
RUN yum install -y tar which gzip # TODO remove # buildkit
# Mon, 02 Nov 2026 20:45:59 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Mon, 02 Nov 2026 20:45:59 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Mon, 02 Nov 2026 20:45:59 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Mon, 02 Nov 2026 20:45:59 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Mon, 02 Nov 2026 20:45:59 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Mon, 02 Nov 2026 20:45:59 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 02 Nov 2026 20:45:59 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Mon, 02 Nov 2026 20:45:59 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Mon, 02 Nov 2026 20:46:00 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Mon, 02 Nov 2026 20:46:00 GMT
ARG USER_HOME_DIR=/root
# Mon, 02 Nov 2026 20:46:00 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 02 Nov 2026 20:46:00 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 02 Nov 2026 20:46:00 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:c1eee8f81fa5e953bb6eab0ff6f612967f0ef8b1dc9fac3cb2319b1021f7a245`  
		Last Modified: Sat, 31 Oct 2026 02:35:03 GMT  
		Size: 53.5 MB (53456123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0821b59644658a8e221fe43b1e4b9b44cc5bd0c995e004549c993c617aa1f38`  
		Last Modified: Mon, 02 Nov 2026 20:10:40 GMT  
		Size: 152.1 MB (152114057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9ef8086f881b096142bc5d9b5cb86495eb9e95bdc5e0da3eb5d3fb1b93851eb`  
		Last Modified: Mon, 02 Nov 2026 20:46:21 GMT  
		Size: 158.7 MB (158720879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44103ae8b7c2f53e1e961105531c88716c3aacf0b9baf6160d6ca12191a1f6e8`  
		Last Modified: Mon, 02 Nov 2026 20:46:19 GMT  
		Size: 13.8 MB (13772576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdbdfff4362bb9eb08956c5ccbd7fdf632b6c6a8666c0aa0d6680c44bd76132c`  
		Last Modified: Mon, 02 Nov 2026 20:46:18 GMT  
		Size: 10.1 MB (10059013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:427cc34cf0d7139072cfab3a621b720409f4451662ffcc500ace85ed58baa0dc`  
		Last Modified: Mon, 02 Nov 2026 20:46:18 GMT  
		Size: 854.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05ddf5496dbf88dc1223136c500600c2e7ae9b0c0e1d5645f186ef7e17c00173`  
		Last Modified: Mon, 02 Nov 2026 20:46:19 GMT  
		Size: 157.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-11` - unknown; unknown

```console
$ docker pull maven@sha256:fb0cba005f8518d4e55045f3c1b3bfa34184ab8f6a4766ff0d4e3f11ec92fbc6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6294586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9413e4c5965748bf227434f9183fcbae06ecb4d89383741a1c21f4997c08e183`

```dockerfile
```

-	Layers:
	-	`sha256:dae43cfd8ea9d1287fed41916884b7efe207a24b57cf968543e244a8c9403ef2`  
		Last Modified: Mon, 02 Nov 2026 20:46:18 GMT  
		Size: 6.3 MB (6277099 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6ff772aaa468823c80973b74e2c23a57f5b80e53b2431ac795ca5cc5a39417a9`  
		Last Modified: Mon, 02 Nov 2026 20:46:17 GMT  
		Size: 17.5 KB (17487 bytes)  
		MIME: application/vnd.in-toto+json
