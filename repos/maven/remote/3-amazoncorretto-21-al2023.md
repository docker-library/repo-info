## `maven:3-amazoncorretto-21-al2023`

```console
$ docker pull maven@sha256:ba6184681cbde686cfb290c8d2452df09efdc09d0e3af03fbb4fab44562e643e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-21-al2023` - linux; amd64

```console
$ docker pull maven@sha256:2e8d39b818855717e540458d0f3763016fde1aa06c2e8c016ae51a38b06be183
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **399.0 MB (398986962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7159917c4586a6b246870235114830e4cd81ae7ad1b1656dd014109a58e4822a`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 21 Oct 2026 22:45:19 GMT
COPY /rootfs/ / # buildkit
# Wed, 21 Oct 2026 22:45:19 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 23:28:46 GMT
ARG version=21.0.12.13-1
# Wed, 21 Oct 2026 23:28:46 GMT
ARG package_version=1
# Wed, 21 Oct 2026 23:28:46 GMT
# ARGS: version=21.0.12.13-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 21 Oct 2026 23:28:46 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 23:28:46 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Thu, 22 Oct 2026 00:18:59 GMT
RUN yum install -y tar which gzip # TODO remove # buildkit
# Thu, 22 Oct 2026 00:19:01 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Thu, 22 Oct 2026 00:19:01 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 22 Oct 2026 00:19:01 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 22 Oct 2026 00:19:01 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 22 Oct 2026 00:19:01 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 22 Oct 2026 00:19:01 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 22 Oct 2026 00:19:01 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 22 Oct 2026 00:19:01 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 22 Oct 2026 00:19:01 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 22 Oct 2026 00:19:01 GMT
ARG USER_HOME_DIR=/root
# Thu, 22 Oct 2026 00:19:01 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 22 Oct 2026 00:19:01 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 22 Oct 2026 00:19:01 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:7234d0a9b6ba1270c7bb653ee62a443a1dbb6fdfa833336edd3c0691c2524d1f`  
		Last Modified: Thu, 01 Oct 2026 02:22:29 GMT  
		Size: 54.6 MB (54630770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e69e771ce941f5b6eecd0935a142528c16f1b8296b2ebfb3659b930364109a4a`  
		Last Modified: Wed, 21 Oct 2026 23:29:08 GMT  
		Size: 170.5 MB (170461930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c81901f6480a5a4904a7796169f51f29c64b57564ccab8b86addf767b27746f5`  
		Last Modified: Thu, 22 Oct 2026 00:19:21 GMT  
		Size: 150.3 MB (150309808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67513bd62cbc68d5f25fc26b268ce5fc7ce8a2ea1908a4002e4610c180238047`  
		Last Modified: Thu, 22 Oct 2026 00:19:18 GMT  
		Size: 13.5 MB (13524429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3b2617123f169dc5cef5894aeb80ce6dd3f9b9ba09cc59b3050fb7b9a213ad7`  
		Last Modified: Thu, 22 Oct 2026 00:19:18 GMT  
		Size: 10.1 MB (10059015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22bf1812acdf3ce0335c9220bb85884b7199b385b36cbad805e994977f7f0c80`  
		Last Modified: Thu, 22 Oct 2026 00:19:18 GMT  
		Size: 852.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:360afb38a0eb7de6bef3f46744a6a1df7ac6153d72b67defbd4a706198f1932a`  
		Last Modified: Thu, 22 Oct 2026 00:19:19 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-21-al2023` - unknown; unknown

```console
$ docker pull maven@sha256:30f9433bad44573a749b1d9e6a186cf0af74fb088a04e35bd4d5067663706cc3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6271661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfbc99636ecfd9c48363542f55c5edc1141feaa2fe13883cfa0f0ce1ac5c2952`

```dockerfile
```

-	Layers:
	-	`sha256:1d1e71a9d7147d2f756fa6cc3fbc431116aa1a799b737e4b4e0c6a32ec3dc0ac`  
		Last Modified: Thu, 22 Oct 2026 00:19:18 GMT  
		Size: 6.3 MB (6254358 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:38f4fa06e5cc04ceb1df5add26e49c328332f980c27a5c2eacdbe489beb4ff50`  
		Last Modified: Thu, 22 Oct 2026 00:19:17 GMT  
		Size: 17.3 KB (17303 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-21-al2023` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:e89badf2fe196e5b683906e4743b0b6c551d58796ea4661c9823321f5a8c39ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **394.5 MB (394549203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:544ab1846ec226ae6e6c961839b9819d0b630bac27e9568452bd201cd3c61baf`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 21 Oct 2026 23:11:39 GMT
COPY /rootfs/ / # buildkit
# Wed, 21 Oct 2026 23:11:39 GMT
CMD ["/bin/bash"]
# Thu, 22 Oct 2026 00:20:31 GMT
ARG version=21.0.12.13-1
# Thu, 22 Oct 2026 00:20:31 GMT
ARG package_version=1
# Thu, 22 Oct 2026 00:20:31 GMT
# ARGS: version=21.0.12.13-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 22 Oct 2026 00:20:31 GMT
ENV LANG=C.UTF-8
# Thu, 22 Oct 2026 00:20:31 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Thu, 22 Oct 2026 01:21:19 GMT
RUN yum install -y tar which gzip # TODO remove # buildkit
# Thu, 22 Oct 2026 01:21:22 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Thu, 22 Oct 2026 01:21:22 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 22 Oct 2026 01:21:22 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 22 Oct 2026 01:21:22 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 22 Oct 2026 01:21:22 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 22 Oct 2026 01:21:22 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 22 Oct 2026 01:21:22 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 22 Oct 2026 01:21:22 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 22 Oct 2026 01:21:22 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 22 Oct 2026 01:21:22 GMT
ARG USER_HOME_DIR=/root
# Thu, 22 Oct 2026 01:21:22 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 22 Oct 2026 01:21:22 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 22 Oct 2026 01:21:22 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:3009834f3cf8cead1d3dea9d3cbebc711c021c4aed04759be014247a0c3181e7`  
		Last Modified: Thu, 01 Oct 2026 02:22:31 GMT  
		Size: 53.5 MB (53504398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:542142d6f6c0a5c14eb4a5ffd8afad7a596be76567755ce16e9d35c214b9e9e3`  
		Last Modified: Thu, 22 Oct 2026 00:20:56 GMT  
		Size: 168.7 MB (168745392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcb854b0f6932b102e39ef6928af1f9b1bfbc705773eb31e1de2840695220dbb`  
		Last Modified: Thu, 22 Oct 2026 01:21:43 GMT  
		Size: 148.5 MB (148470556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bf2463b67b9aec912992733a9fcb6243bba8fd938939d6d7b397e19aa8810ca`  
		Last Modified: Thu, 22 Oct 2026 01:21:40 GMT  
		Size: 13.8 MB (13768832 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c799b85f8b880e5dd99779c869025b22d14ed0acc28174de396f267106286ae`  
		Last Modified: Thu, 22 Oct 2026 01:21:40 GMT  
		Size: 10.1 MB (10059012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13d57d7e6f0b4c4868fe2a5c6e78bfc167e0e2afa4c3aa2e8c17b546e917bc05`  
		Last Modified: Thu, 22 Oct 2026 01:21:40 GMT  
		Size: 854.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0740c3916d88241308494971af141c6d963d2fb868fb5325ee7085cc2337e94a`  
		Last Modified: Thu, 22 Oct 2026 01:21:41 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-21-al2023` - unknown; unknown

```console
$ docker pull maven@sha256:f433114b73b281beaf55f748b4b7036a10359f101a19de9405b19392a14b5818
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6270815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3d54f4cbcffd83ce7762ba17938a44383a9a96bbcc47a391819f7969ffab023`

```dockerfile
```

-	Layers:
	-	`sha256:852621de4201deb62d435980bd2fb531e47972bff7ae162c7e95f9864b8ec90c`  
		Last Modified: Thu, 22 Oct 2026 01:21:40 GMT  
		Size: 6.3 MB (6253328 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8c2687c8ad3b8b29d180ff67fd6347dccd89481d635ad722625a2972faeb1472`  
		Last Modified: Thu, 22 Oct 2026 01:21:39 GMT  
		Size: 17.5 KB (17487 bytes)  
		MIME: application/vnd.in-toto+json
