## `maven:3-amazoncorretto-17-al2023`

```console
$ docker pull maven@sha256:145768784bd5561a93319bd57ffaee326a2be73c88971ff02b4686ee9c261ff4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-17-al2023` - linux; amd64

```console
$ docker pull maven@sha256:ab23490ccc818525e6c10826151cd7cde90cb22c87989a8dbf4f0e79cdd6a93d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **375.0 MB (374966622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfe022ce153bd79d5311205b4a6e53e474460c255cd3d4036655e3039bab8b7f`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 20 Aug 2026 16:55:33 GMT
COPY /rootfs/ / # buildkit
# Thu, 20 Aug 2026 16:55:33 GMT
CMD ["/bin/bash"]
# Thu, 20 Aug 2026 17:20:18 GMT
ARG version=17.0.20.10-1
# Thu, 20 Aug 2026 17:20:18 GMT
ARG package_version=1
# Thu, 20 Aug 2026 17:20:18 GMT
# ARGS: version=17.0.20.10-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 20 Aug 2026 17:20:18 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:20:18 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
# Thu, 20 Aug 2026 18:09:15 GMT
RUN yum install -y tar which gzip # TODO remove # buildkit
# Thu, 20 Aug 2026 18:09:17 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Thu, 20 Aug 2026 18:09:17 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 20 Aug 2026 18:09:17 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 20 Aug 2026 18:09:17 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 20 Aug 2026 18:09:17 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 20 Aug 2026 18:09:17 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 20 Aug 2026 18:09:17 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 20 Aug 2026 18:09:17 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 20 Aug 2026 18:09:17 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 20 Aug 2026 18:09:17 GMT
ARG USER_HOME_DIR=/root
# Thu, 20 Aug 2026 18:09:17 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 20 Aug 2026 18:09:17 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 20 Aug 2026 18:09:17 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:f206cad061713321049e1fe0c85223e018266fd8bccebf3156ef94c125bbd2e0`  
		Last Modified: Mon, 17 Aug 2026 23:42:26 GMT  
		Size: 54.6 MB (54583847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfead4a6ee7773d2dbc579b59ce8c1135ecf004db916308e9802df9eb8fe9f5a`  
		Last Modified: Thu, 20 Aug 2026 17:20:40 GMT  
		Size: 157.1 MB (157139355 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09b044ec6c755582f5b7282e726a88926488287b24373dfff8195095f725a206`  
		Last Modified: Thu, 20 Aug 2026 18:09:36 GMT  
		Size: 140.4 MB (140357428 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fd8cd24b987a275e13d3686dc71eca2423145a53e50d81d147a3cf342a6602f`  
		Last Modified: Thu, 20 Aug 2026 18:09:33 GMT  
		Size: 13.5 MB (13525012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71cd73a31fe027c334d6638c73b5a288a7f8b4a1498f9467bd8c00a35eba09c3`  
		Last Modified: Thu, 20 Aug 2026 18:09:33 GMT  
		Size: 9.4 MB (9359968 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a249c175abc0d1198c2ac2a16f400083e380323f620ca08a3f8f7b1fd55c3e4`  
		Last Modified: Thu, 20 Aug 2026 18:09:32 GMT  
		Size: 853.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61941dc465fda783e066bd1f1de1819b51fcafbc678eb9fdda63a56bb3432fbe`  
		Last Modified: Thu, 20 Aug 2026 18:09:33 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-17-al2023` - unknown; unknown

```console
$ docker pull maven@sha256:156eb02a82b9e016e8625369e5089df3e98393216543a1dbdfe812bfe9a60e5a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6264174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb6d3c1023ff221559337b7cdb61c996531ea15f8cabf4e59a7e17815cdb5eef`

```dockerfile
```

-	Layers:
	-	`sha256:88f1843691f2b25fc87a81e596a2b782c8fbc222352fae29c49e9ea014ddfbf3`  
		Last Modified: Thu, 20 Aug 2026 18:09:32 GMT  
		Size: 6.2 MB (6246879 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fef31ef1ef01658616ef967f779e383cfd880c6973ded2557c9a501bf39e1ef2`  
		Last Modified: Thu, 20 Aug 2026 18:09:32 GMT  
		Size: 17.3 KB (17295 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-17-al2023` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:d2108a36fad7222abf4004fe5c060d305b71df941ae13b4b82c378c02b3cd471
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **371.2 MB (371163034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87f547709e37591b6a86c20a9cbe6e61fc8fa963fb63b12dbcf646977886032e`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 20 Aug 2026 16:55:33 GMT
COPY /rootfs/ / # buildkit
# Thu, 20 Aug 2026 16:55:33 GMT
CMD ["/bin/bash"]
# Thu, 20 Aug 2026 17:17:00 GMT
ARG version=17.0.20.10-1
# Thu, 20 Aug 2026 17:17:00 GMT
ARG package_version=1
# Thu, 20 Aug 2026 17:17:00 GMT
# ARGS: version=17.0.20.10-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 20 Aug 2026 17:17:00 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:17:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
# Thu, 20 Aug 2026 18:05:26 GMT
RUN yum install -y tar which gzip # TODO remove # buildkit
# Thu, 20 Aug 2026 18:05:28 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Thu, 20 Aug 2026 18:05:29 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 20 Aug 2026 18:05:29 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 20 Aug 2026 18:05:29 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 20 Aug 2026 18:05:29 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 20 Aug 2026 18:05:29 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 20 Aug 2026 18:05:29 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 20 Aug 2026 18:05:29 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 20 Aug 2026 18:05:29 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 20 Aug 2026 18:05:29 GMT
ARG USER_HOME_DIR=/root
# Thu, 20 Aug 2026 18:05:29 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 20 Aug 2026 18:05:29 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 20 Aug 2026 18:05:29 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:108a276670f119053938f97626b5d9916306b34861b9c0cdd8d64a50bf504ad8`  
		Last Modified: Mon, 17 Aug 2026 23:42:41 GMT  
		Size: 53.5 MB (53450887 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2898f49accdb0dda82fec0027f06a1977c5014ad3d546b41c09dbf32cbb1028`  
		Last Modified: Thu, 20 Aug 2026 17:17:23 GMT  
		Size: 156.0 MB (155950280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1008f94669e8c08e2a407b9d8e0c23dd5cc4daeb9feeab4b5d56ae4a128e501f`  
		Last Modified: Thu, 20 Aug 2026 18:05:49 GMT  
		Size: 138.6 MB (138631238 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d2c81e9d567c818c3c87e1af4797cb545375a0c705d956686fb0d4ed3c98619`  
		Last Modified: Thu, 20 Aug 2026 18:05:46 GMT  
		Size: 13.8 MB (13769641 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8c44aa44f23d62b454951409bbdb604d6bed44ec9d75e5a9bf24bdda132a5b9`  
		Last Modified: Thu, 20 Aug 2026 18:05:46 GMT  
		Size: 9.4 MB (9359976 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aca7d8c5dd4410acf9a37dae9a20135535abc59015c4497e1a0bf97ec7703178`  
		Last Modified: Thu, 20 Aug 2026 18:05:46 GMT  
		Size: 853.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a7784bf3690297304d8e92736ef3e91302bc9948d87c3809c0ca8c30921a09f`  
		Last Modified: Thu, 20 Aug 2026 18:05:47 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-17-al2023` - unknown; unknown

```console
$ docker pull maven@sha256:2fe4fee55775fc3bfcd7ee9a4cae09c41c5f919a113d119e843cf930afae651a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6263325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af5b775014597294c1d745fe9f96a9fb6ec459eb3be059ff2010fd69c4432d46`

```dockerfile
```

-	Layers:
	-	`sha256:58f16f396ffe468af9f2c7659301b7741818f9a63596abf68b75c55af57dcf87`  
		Last Modified: Thu, 20 Aug 2026 18:05:46 GMT  
		Size: 6.2 MB (6245846 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3efc2196f7ccd8d93a11599253458c3dff997fd60eab57a7e7f74498a7be936e`  
		Last Modified: Thu, 20 Aug 2026 18:05:46 GMT  
		Size: 17.5 KB (17479 bytes)  
		MIME: application/vnd.in-toto+json
