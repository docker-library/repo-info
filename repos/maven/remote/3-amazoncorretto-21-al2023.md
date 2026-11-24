## `maven:3-amazoncorretto-21-al2023`

```console
$ docker pull maven@sha256:1c99cf2b5926c5123a2ffdb847bfc599c0e81618d85302470dc58f021bb22ada
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-21-al2023` - linux; amd64

```console
$ docker pull maven@sha256:a106d70e64483d38729e9000341ef0fd633c16dc180f033b7530c1985b4e12f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **416.0 MB (415993932 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49695bf59be18fe6853580c9254ff1899867fc29485ce3af9a68f0472c1924ee`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 23 Nov 2026 20:27:44 GMT
COPY /rootfs/ / # buildkit
# Mon, 23 Nov 2026 20:27:44 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 21:11:10 GMT
ARG version=21.0.13.1.2-1
# Mon, 23 Nov 2026 21:11:10 GMT
ARG resource_version=21.0.13.1.2
# Mon, 23 Nov 2026 21:11:10 GMT
ARG package_version=1
# Mon, 23 Nov 2026 21:11:10 GMT
# ARGS: version=21.0.13.1.2-1 resource_version=21.0.13.1.2 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 23 Nov 2026 21:11:10 GMT
ENV LANG=C.UTF-8
# Mon, 23 Nov 2026 21:11:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Mon, 23 Nov 2026 21:31:26 GMT
RUN yum install -y tar which gzip # TODO remove # buildkit
# Mon, 23 Nov 2026 21:31:28 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Mon, 23 Nov 2026 21:31:28 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Mon, 23 Nov 2026 21:31:28 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Mon, 23 Nov 2026 21:31:28 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Mon, 23 Nov 2026 21:31:28 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Mon, 23 Nov 2026 21:31:28 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 23 Nov 2026 21:31:28 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Mon, 23 Nov 2026 21:31:28 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Mon, 23 Nov 2026 21:31:28 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Mon, 23 Nov 2026 21:31:28 GMT
ARG USER_HOME_DIR=/root
# Mon, 23 Nov 2026 21:31:28 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 23 Nov 2026 21:31:28 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 23 Nov 2026 21:31:28 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:88cafb2c9567db642a80315f76be36da2bd56094bdf8c8155ad2f5c3345fb5f4`  
		Last Modified: Fri, 20 Nov 2026 20:24:07 GMT  
		Size: 54.6 MB (54565169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8e73054eee66204c4cdf6fd0bc50066ac938949202dc045d51a5fb24558d98e`  
		Last Modified: Mon, 23 Nov 2026 21:11:31 GMT  
		Size: 170.7 MB (170740292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dc25fe11cf6e41f199f7b9b5d70ac88678f569562f2f723ce93c2c1615e319e`  
		Last Modified: Mon, 23 Nov 2026 21:31:47 GMT  
		Size: 167.8 MB (167814753 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:577ffb928ab9742d94ef914917f9f14562f94298050230a1bbed30a577dc6701`  
		Last Modified: Mon, 23 Nov 2026 21:31:43 GMT  
		Size: 13.5 MB (13521423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb74f6126a2ea787e592e318d77cbdc35c5bb06736c35ed608793ea0d8fd8342`  
		Last Modified: Mon, 23 Nov 2026 21:31:43 GMT  
		Size: 9.4 MB (9351286 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d08cd1709ee713345715c50d501072bd5a501404f3957ffe4ddde432d60438a0`  
		Last Modified: Mon, 23 Nov 2026 21:31:42 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cd136cb4db66326a148811f1a7ece5bd48e363077c359bece7ea23b3d791693`  
		Last Modified: Mon, 23 Nov 2026 21:31:44 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-21-al2023` - unknown; unknown

```console
$ docker pull maven@sha256:985efd4c586ff229fd49fef01465acaa768f193e644459a9e89cfa86b6a6b6fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6266021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:208efcca0069e3fa0f6380af232ce9a25a31ff2855769afc472edd22be419a11`

```dockerfile
```

-	Layers:
	-	`sha256:59011bcc0d7550d6b778f1910c6226629f93f02cc9d8b9dc4352f841ec138e8d`  
		Last Modified: Mon, 23 Nov 2026 21:31:43 GMT  
		Size: 6.2 MB (6248722 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:510bd2d55ada1e620f459055a570a190d9879186244bede4b1c9a7a80b7b7bc7`  
		Last Modified: Mon, 23 Nov 2026 21:31:43 GMT  
		Size: 17.3 KB (17299 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-21-al2023` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:0fa211dc03202ea2849680fc3d7767f790ab5f79aff84a2a23cc5599bbba3321
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **410.7 MB (410745537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:415ee62e425b7ed3f027fb452bcf31fd3296efb701de41b8765bf3a106715280`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 18 Nov 2026 21:16:23 GMT
COPY /rootfs/ / # buildkit
# Wed, 18 Nov 2026 21:16:23 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 21:35:24 GMT
ARG version=21.0.13.1.2-1
# Wed, 18 Nov 2026 21:35:24 GMT
ARG resource_version=21.0.13.1.2
# Wed, 18 Nov 2026 21:35:24 GMT
ARG package_version=1
# Wed, 18 Nov 2026 21:35:24 GMT
# ARGS: version=21.0.13.1.2-1 resource_version=21.0.13.1.2 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 18 Nov 2026 21:35:24 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 21:35:24 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Fri, 20 Nov 2026 06:13:38 GMT
RUN yum install -y tar which gzip # TODO remove # buildkit
# Fri, 20 Nov 2026 06:13:40 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Fri, 20 Nov 2026 06:13:40 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 20 Nov 2026 06:13:40 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 06:13:40 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 06:13:40 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 20 Nov 2026 06:13:40 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 20 Nov 2026 06:13:40 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 20 Nov 2026 06:13:40 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 06:13:40 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 20 Nov 2026 06:13:40 GMT
ARG USER_HOME_DIR=/root
# Fri, 20 Nov 2026 06:13:40 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 20 Nov 2026 06:13:40 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 20 Nov 2026 06:13:40 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:7dd5afb185e9abad9919aa0d5eaa430bb9babdb805532cdb871320227597f486`  
		Last Modified: Wed, 18 Nov 2026 01:44:00 GMT  
		Size: 53.5 MB (53453550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f300ae6bc19c11a6f167b2d270c42dacc545845a1bd945c60ab38bb4c87ea4ad`  
		Last Modified: Wed, 18 Nov 2026 21:35:47 GMT  
		Size: 169.0 MB (169034352 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2acb14c2ad35f885df2e441f89a31274c1dad0464aa64153a09a182e4f1ce36c`  
		Last Modified: Fri, 20 Nov 2026 06:14:02 GMT  
		Size: 164.4 MB (164425639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a8cb37173af6e72bd8fdae750b5e55584ffdc6ff3c921f83ba5b1bcf73f8881`  
		Last Modified: Fri, 20 Nov 2026 06:13:59 GMT  
		Size: 13.8 MB (13771971 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:775672d580a08e13fd21f27a2d5066d1e9e471b8384a299a6188829c98c5c164`  
		Last Modified: Fri, 20 Nov 2026 06:13:59 GMT  
		Size: 10.1 MB (10059018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94703c8c92b333230bb2f696115f8a0531893f6ac9816b0bf5f7cc3855fa5c5d`  
		Last Modified: Fri, 20 Nov 2026 06:13:59 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1395eb494468b26a481b080bca91a966308d021621448edb2384ced3d043769f`  
		Last Modified: Fri, 20 Nov 2026 06:14:00 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-21-al2023` - unknown; unknown

```console
$ docker pull maven@sha256:391a1bcebed47c3c596c590d8ef1880e0c945be0c3183ef1f27214a475a1272a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6271485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e45543e05eb649d00dd60fe14fc8ce9c23d314364321e5849b534d4c1ee739a`

```dockerfile
```

-	Layers:
	-	`sha256:1b6f7d844a799b07d94f421294380ff2941e4df69c04abba86354094b9642cfa`  
		Last Modified: Fri, 20 Nov 2026 06:13:59 GMT  
		Size: 6.3 MB (6253998 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:de0fff26dae62b00018036d7f343337209f8623caf6ad22080d2dc96eac1cfee`  
		Last Modified: Fri, 20 Nov 2026 06:13:59 GMT  
		Size: 17.5 KB (17487 bytes)  
		MIME: application/vnd.in-toto+json
