## `maven:amazoncorretto`

```console
$ docker pull maven@sha256:490bf1b0b852f8ae833f134933f30ca38024e4db475b2db05ee58b2f819179f0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:amazoncorretto` - linux; amd64

```console
$ docker pull maven@sha256:a1473f4b82d28fd3fa92bcdaac486fe31b6971a2a7ffe5cd74f64b1acfacf8d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **407.5 MB (407542832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d377a45123d639be1720ccb68a9bd34b98584b0afda9997ff01854ad52769b21`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 17 Sep 2026 21:13:04 GMT
COPY /rootfs/ / # buildkit
# Thu, 17 Sep 2026 21:13:04 GMT
CMD ["/bin/bash"]
# Thu, 17 Sep 2026 22:22:58 GMT
ARG version=25.0.4.8-1
# Thu, 17 Sep 2026 22:22:58 GMT
ARG package_version=1
# Thu, 17 Sep 2026 22:22:58 GMT
# ARGS: version=25.0.4.8-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 17 Sep 2026 22:22:58 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 22:22:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Thu, 17 Sep 2026 23:24:13 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Thu, 17 Sep 2026 23:24:13 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 17 Sep 2026 23:24:13 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 17 Sep 2026 23:24:13 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 17 Sep 2026 23:24:13 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 17 Sep 2026 23:24:13 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 17 Sep 2026 23:24:13 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 17 Sep 2026 23:24:13 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 17 Sep 2026 23:24:13 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 17 Sep 2026 23:24:13 GMT
ARG USER_HOME_DIR=/root
# Thu, 17 Sep 2026 23:24:13 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 17 Sep 2026 23:24:13 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 17 Sep 2026 23:24:13 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:0f0cc63a5845e28f771c9fceda4decc68b806470b009dae4085b441df0329b69`  
		Last Modified: Mon, 31 Aug 2026 23:14:18 GMT  
		Size: 54.6 MB (54586282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb04d3a954a7cce9c0c8848251964ca12ad6dd45bce3b0832c52f22620f55838`  
		Last Modified: Thu, 17 Sep 2026 22:23:20 GMT  
		Size: 189.5 MB (189469570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29a6a9b71d549d7ec5de60b356b472b42d5933519f624498e3ac12cf6cd5b263`  
		Last Modified: Thu, 17 Sep 2026 23:24:32 GMT  
		Size: 154.1 MB (154125993 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acab4e558434f42a075a0dd4b800a119056f8669cad3c02febf551d84138fe79`  
		Last Modified: Thu, 17 Sep 2026 23:24:30 GMT  
		Size: 9.4 MB (9359977 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec6313da42170b0156c819ab966a58c8b1728fbfeacce2be5f13d01662022ab2`  
		Last Modified: Thu, 17 Sep 2026 23:24:29 GMT  
		Size: 852.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07a7c6fe33dbc1d7f0a9500bd7cde8df7f4a90bedbeba96a5a247a4c064ab8c8`  
		Last Modified: Thu, 17 Sep 2026 23:24:29 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:amazoncorretto` - unknown; unknown

```console
$ docker pull maven@sha256:ef37f02b14623113c0ccba9d72a4c8d6f789130f22b63760460abe4ace1960fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6240690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b0a0e7dad87af4201b96dc36396a52875292378a06d0f2b6f279181f1350a46`

```dockerfile
```

-	Layers:
	-	`sha256:49478158e09f7efbb57145f356fa41245c0ff054fb13740e503b9e8c96a0051a`  
		Last Modified: Thu, 17 Sep 2026 23:24:29 GMT  
		Size: 6.2 MB (6223903 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fedfa19210b73d538c05f1d2e75bf4a74350c565cc744cd0d620d33944563e81`  
		Last Modified: Thu, 17 Sep 2026 23:24:29 GMT  
		Size: 16.8 KB (16787 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:amazoncorretto` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:f59d9355fc05ad94a1b9780256280dec8f9b37227dc96dfd06831313565a6cc2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **402.9 MB (402920409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:906be646605f443ea311e43841401a54e3030ac1719105a0ad39de92ab236615`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 17 Sep 2026 21:12:44 GMT
COPY /rootfs/ / # buildkit
# Thu, 17 Sep 2026 21:12:44 GMT
CMD ["/bin/bash"]
# Thu, 17 Sep 2026 22:47:22 GMT
ARG version=25.0.4.8-1
# Thu, 17 Sep 2026 22:47:22 GMT
ARG package_version=1
# Thu, 17 Sep 2026 22:47:22 GMT
# ARGS: version=25.0.4.8-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 17 Sep 2026 22:47:22 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 22:47:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Thu, 17 Sep 2026 23:27:20 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Thu, 17 Sep 2026 23:27:20 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 17 Sep 2026 23:27:20 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 17 Sep 2026 23:27:20 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 17 Sep 2026 23:27:20 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 17 Sep 2026 23:27:20 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 17 Sep 2026 23:27:20 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 17 Sep 2026 23:27:20 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 17 Sep 2026 23:27:20 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 17 Sep 2026 23:27:20 GMT
ARG USER_HOME_DIR=/root
# Thu, 17 Sep 2026 23:27:20 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 17 Sep 2026 23:27:20 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 17 Sep 2026 23:27:20 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:6b98cf5afd5c5e1a58de351abf0b1ec3a4a61b63fd5a86c62edc6367d59ac249`  
		Last Modified: Mon, 31 Aug 2026 23:14:33 GMT  
		Size: 53.5 MB (53452573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ede0990d45aba19c1b3aba4d86361f0ab497c8e65c5019e492496449a8a5aa9`  
		Last Modified: Thu, 17 Sep 2026 22:47:48 GMT  
		Size: 187.4 MB (187380240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56931185901377e4fedab4d3f739875ba5c97e3b99f7b40dbbe6962034db3f63`  
		Last Modified: Thu, 17 Sep 2026 23:27:41 GMT  
		Size: 152.7 MB (152726601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f603b8905628423a81a26da5a43361d49a91c5d106f6c0d95565542dcabf0f53`  
		Last Modified: Thu, 17 Sep 2026 23:27:38 GMT  
		Size: 9.4 MB (9359983 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:176dd5481fcc635227911ed5bc06ffa0f29710672a2d4dcebd65411bcca8d873`  
		Last Modified: Thu, 17 Sep 2026 23:27:37 GMT  
		Size: 854.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5058bd7a4fc4d58bb55446346c7ff0d8223dd8d7f42126207250a02b853a874f`  
		Last Modified: Thu, 17 Sep 2026 23:27:37 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:amazoncorretto` - unknown; unknown

```console
$ docker pull maven@sha256:37ff4adc08e987bef6020b285726f8ee3d69a332ccdc87e1cfa02271db2331e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6239934 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cc8a9ef3f90ccc1a9ef3bc9e697bc58f35dde035900ed57b77d0a814145cb12`

```dockerfile
```

-	Layers:
	-	`sha256:ddcb904560a2e5baab74d171ed86cf52cde8dd3a95bc0a272f663f2c53cac91e`  
		Last Modified: Thu, 17 Sep 2026 23:27:37 GMT  
		Size: 6.2 MB (6222932 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7c7b93afdbe657374093c659838d0b3f77d41dc3a0e3ed9123762cd82c680cdc`  
		Last Modified: Thu, 17 Sep 2026 23:27:37 GMT  
		Size: 17.0 KB (17002 bytes)  
		MIME: application/vnd.in-toto+json
