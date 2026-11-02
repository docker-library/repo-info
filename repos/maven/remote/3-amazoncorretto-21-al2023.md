## `maven:3-amazoncorretto-21-al2023`

```console
$ docker pull maven@sha256:d3d7ea95ac26345438ac49a2b2db5fe2b296eacff8902da7961cb5c6b5c31632
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-21-al2023` - linux; amd64

```console
$ docker pull maven@sha256:e5a64fafd893c5b33441cd434d79c718a3a0e682d471eb876cf80d375148fce1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **409.6 MB (409566597 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2de4be603b27364db0834f61e9037d14252c87f79910bd68c63af0080eafb2c`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 02 Nov 2026 19:55:48 GMT
COPY /rootfs/ / # buildkit
# Mon, 02 Nov 2026 19:55:48 GMT
CMD ["/bin/bash"]
# Mon, 02 Nov 2026 20:11:37 GMT
ARG version=21.0.13.0.11-1
# Mon, 02 Nov 2026 20:11:37 GMT
ARG resource_version=21.0.13.0.11
# Mon, 02 Nov 2026 20:11:37 GMT
ARG package_version=1
# Mon, 02 Nov 2026 20:11:37 GMT
# ARGS: version=21.0.13.0.11-1 resource_version=21.0.13.0.11 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 02 Nov 2026 20:11:37 GMT
ENV LANG=C.UTF-8
# Mon, 02 Nov 2026 20:11:37 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Mon, 02 Nov 2026 20:46:03 GMT
RUN yum install -y tar which gzip # TODO remove # buildkit
# Mon, 02 Nov 2026 20:46:05 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Mon, 02 Nov 2026 20:46:05 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Mon, 02 Nov 2026 20:46:05 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Mon, 02 Nov 2026 20:46:05 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Mon, 02 Nov 2026 20:46:05 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Mon, 02 Nov 2026 20:46:05 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 02 Nov 2026 20:46:05 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Mon, 02 Nov 2026 20:46:05 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Mon, 02 Nov 2026 20:46:05 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Mon, 02 Nov 2026 20:46:05 GMT
ARG USER_HOME_DIR=/root
# Mon, 02 Nov 2026 20:46:05 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 02 Nov 2026 20:46:05 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 02 Nov 2026 20:46:05 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:36d0e51e1ea56325505d833f7d87567b6720c396e9a5742de0f157b063545163`  
		Last Modified: Sat, 31 Oct 2026 02:35:05 GMT  
		Size: 54.6 MB (54569615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47013ed06cba49f05f3e9f3318fa114d951542fce9a76fce834c5e780eac4a9d`  
		Last Modified: Mon, 02 Nov 2026 20:12:02 GMT  
		Size: 170.7 MB (170747170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33977194646a48e2dfa563466fb7db8cbe1d1048f9c50e75e0c88735d766f0f2`  
		Last Modified: Mon, 02 Nov 2026 20:46:26 GMT  
		Size: 160.7 MB (160654869 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cfa7cc27ce14e14d08fe8b58fd0609b97aa5a158e37bb66c5d0bc5d1d980484`  
		Last Modified: Mon, 02 Nov 2026 20:46:23 GMT  
		Size: 13.5 MB (13534921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cfd390da35e68df5f0abc485a70f7cea8446bf0e476ad47cd08b89b2134375c`  
		Last Modified: Mon, 02 Nov 2026 20:46:23 GMT  
		Size: 10.1 MB (10059012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0121f8f209a2c29acf5d3f675e0a8ae0011b11e61e1980bb9219feb9378361e5`  
		Last Modified: Mon, 02 Nov 2026 20:46:22 GMT  
		Size: 852.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03b33698e31bf4678b186b923cfe0d3f668c12e046dac8db60a7722d16f23c1e`  
		Last Modified: Mon, 02 Nov 2026 20:46:23 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-21-al2023` - unknown; unknown

```console
$ docker pull maven@sha256:f79ad75fd62055bd15bf0a8e0f6f3ccc9144dde723c0b033eafaa81603dfe1de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6272327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fcfd1fa5792d8b9d54c5d3932cf4729d752cd5a2d51c1b580f429d8ddcf64c3`

```dockerfile
```

-	Layers:
	-	`sha256:9d782a6c4393050bf44cc8f2d98d941b9d120ce2296b1807e4bae1a51d292c37`  
		Last Modified: Mon, 02 Nov 2026 20:46:22 GMT  
		Size: 6.3 MB (6255024 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e4d418eb5d8d37d885396ba0819880e2894aa31e06c3253167c8022504582904`  
		Last Modified: Mon, 02 Nov 2026 20:46:22 GMT  
		Size: 17.3 KB (17303 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-21-al2023` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:ea692bccaa96090289b197cdfcf6bec93fc9fafa7252ef4b759d944d29d3fa90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **405.0 MB (405028697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7587c13fcba3a264e3b1ead3ac079e7950eb22129d57e80447c2b3331df88c9`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 02 Nov 2026 19:55:47 GMT
COPY /rootfs/ / # buildkit
# Mon, 02 Nov 2026 19:55:47 GMT
CMD ["/bin/bash"]
# Mon, 02 Nov 2026 20:11:10 GMT
ARG version=21.0.13.0.11-1
# Mon, 02 Nov 2026 20:11:10 GMT
ARG resource_version=21.0.13.0.11
# Mon, 02 Nov 2026 20:11:10 GMT
ARG package_version=1
# Mon, 02 Nov 2026 20:11:10 GMT
# ARGS: version=21.0.13.0.11-1 resource_version=21.0.13.0.11 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 02 Nov 2026 20:11:10 GMT
ENV LANG=C.UTF-8
# Mon, 02 Nov 2026 20:11:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Mon, 02 Nov 2026 20:46:06 GMT
RUN yum install -y tar which gzip # TODO remove # buildkit
# Mon, 02 Nov 2026 20:46:08 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Mon, 02 Nov 2026 20:46:08 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Mon, 02 Nov 2026 20:46:08 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Mon, 02 Nov 2026 20:46:08 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Mon, 02 Nov 2026 20:46:08 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Mon, 02 Nov 2026 20:46:08 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 02 Nov 2026 20:46:08 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Mon, 02 Nov 2026 20:46:08 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Mon, 02 Nov 2026 20:46:08 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Mon, 02 Nov 2026 20:46:08 GMT
ARG USER_HOME_DIR=/root
# Mon, 02 Nov 2026 20:46:08 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 02 Nov 2026 20:46:08 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 02 Nov 2026 20:46:08 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:c1eee8f81fa5e953bb6eab0ff6f612967f0ef8b1dc9fac3cb2319b1021f7a245`  
		Last Modified: Sat, 31 Oct 2026 02:35:03 GMT  
		Size: 53.5 MB (53456123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8bd08fd180f162c125ccf9c1674915d47bb6e31bd116c345a8c055d06e15049`  
		Last Modified: Mon, 02 Nov 2026 20:11:33 GMT  
		Size: 169.0 MB (169018987 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87f461ff219512efff3651424c6c79ac370496459e98551e0a62650f38363c2e`  
		Last Modified: Mon, 02 Nov 2026 20:46:30 GMT  
		Size: 158.7 MB (158720551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cd105e72b46e83c4f930f6cdf23318b562b073fce2e781aa765f4134cbac208`  
		Last Modified: Mon, 02 Nov 2026 20:46:27 GMT  
		Size: 13.8 MB (13773013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28e7a24f9b463b2b68a9324d384c2d99ae6367e62b4fa8fe08c68f74455f7cc2`  
		Last Modified: Mon, 02 Nov 2026 20:46:27 GMT  
		Size: 10.1 MB (10059013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4687b6da2dd77865da20cb8610aca38340c45c1e4d10aff69877b853bf124686`  
		Last Modified: Mon, 02 Nov 2026 20:46:26 GMT  
		Size: 853.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32a30fd78933037224a50bca3d0b70caafb9c088dc522eabcfaff7d9dadf4447`  
		Last Modified: Mon, 02 Nov 2026 20:46:28 GMT  
		Size: 157.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-21-al2023` - unknown; unknown

```console
$ docker pull maven@sha256:48878bcf98067d365edd3131120c4333e8358701a141ccf38160016474534f9d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6271481 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a88f59d66394f8f936bfd8f0385431bb6dfe0ba3d447e23816cd13c8c43b8e6`

```dockerfile
```

-	Layers:
	-	`sha256:9d4f989dd5dc714c3e5e1c380166277c1144d60d23d9648be327af6d08cc072a`  
		Last Modified: Mon, 02 Nov 2026 20:46:27 GMT  
		Size: 6.3 MB (6253994 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:93dc7de6e1e4a909deffcb72a4ee660e28bbd0299150d631c049cf34e4bb0795`  
		Last Modified: Mon, 02 Nov 2026 20:46:27 GMT  
		Size: 17.5 KB (17487 bytes)  
		MIME: application/vnd.in-toto+json
