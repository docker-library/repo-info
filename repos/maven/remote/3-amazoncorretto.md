## `maven:3-amazoncorretto`

```console
$ docker pull maven@sha256:cbe7e5baedf0b1fb0ad32d6e9d2610079d3c9c572faea31018084de7dd0b3553
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto` - linux; amd64

```console
$ docker pull maven@sha256:7302053cda6e408dd96391fec0dd547688c35ae670e42fad4911e4ae95b4df16
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **415.3 MB (415332171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c92ab01282944ecd18c89de422479b39779dd08571f8f65b05c011dc04ed4a4a`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 05 Oct 2026 18:29:04 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:29:04 GMT
CMD ["/bin/bash"]
# Mon, 05 Oct 2026 18:44:22 GMT
ARG version=25.0.4.10-1
# Mon, 05 Oct 2026 18:44:22 GMT
ARG package_version=1
# Mon, 05 Oct 2026 18:44:22 GMT
# ARGS: version=25.0.4.10-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 05 Oct 2026 18:44:22 GMT
ENV LANG=C.UTF-8
# Mon, 05 Oct 2026 18:44:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Mon, 05 Oct 2026 21:32:15 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Mon, 05 Oct 2026 21:32:15 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Mon, 05 Oct 2026 21:32:15 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Mon, 05 Oct 2026 21:32:15 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Mon, 05 Oct 2026 21:32:15 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Mon, 05 Oct 2026 21:32:15 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 05 Oct 2026 21:32:15 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Mon, 05 Oct 2026 21:32:15 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Mon, 05 Oct 2026 21:32:15 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Mon, 05 Oct 2026 21:32:15 GMT
ARG USER_HOME_DIR=/root
# Mon, 05 Oct 2026 21:32:15 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 05 Oct 2026 21:32:15 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 05 Oct 2026 21:32:15 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:7234d0a9b6ba1270c7bb653ee62a443a1dbb6fdfa833336edd3c0691c2524d1f`  
		Last Modified: Thu, 01 Oct 2026 02:22:29 GMT  
		Size: 54.6 MB (54630770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb4992f1cf7532669201e3d7da8ba0a07a8ffdfc0b13a84bb98552488b86eae9`  
		Last Modified: Mon, 05 Oct 2026 18:44:46 GMT  
		Size: 189.5 MB (189511554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ab3eeb0c5a97e5f264631ede3b70aa93e08019bb14be03dd76bfe0409d8c820`  
		Last Modified: Mon, 05 Oct 2026 21:32:37 GMT  
		Size: 161.1 MB (161129844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92a6d08393d2b11782de4b8e876ae64d1ac94aca66a60607874d7c4930c7c4ba`  
		Last Modified: Mon, 05 Oct 2026 21:32:34 GMT  
		Size: 10.1 MB (10058995 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5c779d3aeae757ea49f1a413321d343d0c582929527ac00cb554e472d8f1f07`  
		Last Modified: Mon, 05 Oct 2026 21:32:33 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a7a984c1999ea8ffce5d461822e6f84f03e1cc4eaf4a0266e84e1e83aa85b25`  
		Last Modified: Mon, 05 Oct 2026 21:32:33 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto` - unknown; unknown

```console
$ docker pull maven@sha256:9c2ab5047f02c9b9b46510b24cf1f8c3b29b9d37b613811d9ada0659f04852cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6245765 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96d5df0b7c0d957eefd0f7c099cef14be7f8f9d508b706c1b03825bb45490015`

```dockerfile
```

-	Layers:
	-	`sha256:75cabe97cbca2d9c4db62f146020924d6d248aea904c0aa2a1ef789a7a16cc33`  
		Last Modified: Mon, 05 Oct 2026 21:32:34 GMT  
		Size: 6.2 MB (6228968 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4adbc8ac43408b3d88a46e47d2edd173c4a746dd80497094f8803dbf5906060a`  
		Last Modified: Mon, 05 Oct 2026 21:32:33 GMT  
		Size: 16.8 KB (16797 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:c1d95f76aa3eae30ce886aa1746d41e39799680fd634f10b8936add302a6b675
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **410.5 MB (410531471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd7d5e84adbd35cabf7b8bf3c514fc0e67bb91e719ad8221889573ba8e246e2f`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 05 Oct 2026 18:28:31 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:28:31 GMT
CMD ["/bin/bash"]
# Mon, 05 Oct 2026 18:43:52 GMT
ARG version=25.0.4.10-1
# Mon, 05 Oct 2026 18:43:52 GMT
ARG package_version=1
# Mon, 05 Oct 2026 18:43:52 GMT
# ARGS: version=25.0.4.10-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 05 Oct 2026 18:43:52 GMT
ENV LANG=C.UTF-8
# Mon, 05 Oct 2026 18:43:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Mon, 05 Oct 2026 21:33:35 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Mon, 05 Oct 2026 21:33:35 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Mon, 05 Oct 2026 21:33:35 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Mon, 05 Oct 2026 21:33:35 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Mon, 05 Oct 2026 21:33:35 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Mon, 05 Oct 2026 21:33:35 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 05 Oct 2026 21:33:35 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Mon, 05 Oct 2026 21:33:35 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Mon, 05 Oct 2026 21:33:35 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Mon, 05 Oct 2026 21:33:35 GMT
ARG USER_HOME_DIR=/root
# Mon, 05 Oct 2026 21:33:35 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 05 Oct 2026 21:33:35 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 05 Oct 2026 21:33:35 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:3009834f3cf8cead1d3dea9d3cbebc711c021c4aed04759be014247a0c3181e7`  
		Last Modified: Thu, 01 Oct 2026 02:22:31 GMT  
		Size: 53.5 MB (53504398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d8f82cdd25a7c12179799666029dc0bc5720c430be45fa6650d3aba439c5853`  
		Last Modified: Mon, 05 Oct 2026 18:44:16 GMT  
		Size: 187.4 MB (187409864 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3115d3ef58ec7291ff3d0709ab2f9010c61135be77bbb083e7f781313429fa1`  
		Last Modified: Mon, 05 Oct 2026 21:33:57 GMT  
		Size: 159.6 MB (159557180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23827c23db771ea2fd69cf05df6db68b77edc12c057a5116406e85ffa26580f8`  
		Last Modified: Mon, 05 Oct 2026 21:33:54 GMT  
		Size: 10.1 MB (10059020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34168d99b90f233984397d346262c0d029f7b1908cca1f030ca83b3f2fa8dbf3`  
		Last Modified: Mon, 05 Oct 2026 21:33:54 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32798ca858ce0549ae620fbe20bcc3ed8a85b2096bd602031450c4ee20591c34`  
		Last Modified: Mon, 05 Oct 2026 21:33:54 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto` - unknown; unknown

```console
$ docker pull maven@sha256:237fd919d47b90d3d5fb2ac06a5faf3acf8e42dba4e1aba20835647a08481722
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6245011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae1a258766887b1e46eccb2d92efad294a45fa6bbfb5fb59044d10a3e087b8c8`

```dockerfile
```

-	Layers:
	-	`sha256:fa6cb015473ecb55ec49bcc9111e21234a24d3d5e9733ff9f91a359edfee3fb6`  
		Last Modified: Mon, 05 Oct 2026 21:33:54 GMT  
		Size: 6.2 MB (6227997 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8a4a35a786c4dc78ebf5399c1908c550237ede3063254cdf68e31eee4191fbfe`  
		Last Modified: Mon, 05 Oct 2026 21:33:54 GMT  
		Size: 17.0 KB (17014 bytes)  
		MIME: application/vnd.in-toto+json
