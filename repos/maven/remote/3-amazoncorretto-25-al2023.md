## `maven:3-amazoncorretto-25-al2023`

```console
$ docker pull maven@sha256:3e3ab2822917afe0d0254d3fb8d7ee1c655946485937bb7d5a8231243eec7f61
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-25-al2023` - linux; amd64

```console
$ docker pull maven@sha256:8aeeca2d587a2b6cd112e342c4311bcdb632c5d917c8f99749d1a2b73f172d2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **430.2 MB (430227316 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97c90db6caa44e8a2dba3c03d05a87f279fb75c81fdfbfc3233e4ab198f3998c`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 16 Nov 2026 22:28:06 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 22:28:06 GMT
CMD ["/bin/bash"]
# Tue, 17 Nov 2026 21:34:51 GMT
ARG version=25.0.5.1.2-1
# Tue, 17 Nov 2026 21:34:51 GMT
ARG resource_version=25.0.5.1.2
# Tue, 17 Nov 2026 21:34:51 GMT
ARG package_version=1
# Tue, 17 Nov 2026 21:34:51 GMT
# ARGS: version=25.0.5.1.2-1 resource_version=25.0.5.1.2 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 17 Nov 2026 21:34:51 GMT
ENV LANG=C.UTF-8
# Tue, 17 Nov 2026 21:34:51 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Tue, 17 Nov 2026 22:11:56 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Tue, 17 Nov 2026 22:11:56 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 17 Nov 2026 22:11:56 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 17 Nov 2026 22:11:56 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 17 Nov 2026 22:11:56 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 17 Nov 2026 22:11:56 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 17 Nov 2026 22:11:56 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 17 Nov 2026 22:11:56 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 17 Nov 2026 22:11:56 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 17 Nov 2026 22:11:56 GMT
ARG USER_HOME_DIR=/root
# Tue, 17 Nov 2026 22:11:56 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 17 Nov 2026 22:11:56 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 17 Nov 2026 22:11:56 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:b14c48cb507df242c2b2a0cb744a00c9498a8511d265f31337cb732917717949`  
		Last Modified: Thu, 12 Nov 2026 22:05:23 GMT  
		Size: 54.6 MB (54569293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06d660831c36d9b04c25c338353b69ba69895ce28e7c8fe96890ff8ddb18a3d1`  
		Last Modified: Tue, 17 Nov 2026 21:35:14 GMT  
		Size: 189.7 MB (189652610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c72a696f211fbbe42c6aa08c8ae9afac0a96a266c0c0608acc67f5e5f1356610`  
		Last Modified: Tue, 17 Nov 2026 22:12:17 GMT  
		Size: 175.9 MB (175945386 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f08221370bacb7bafe67777ba6d1a765bbe353f9976f2f2b0be9be0676d2405`  
		Last Modified: Tue, 17 Nov 2026 22:12:13 GMT  
		Size: 10.1 MB (10059018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:571c1406d5b5952be2873f2def4d734794fe7a390d19e246843bff26d96b74fe`  
		Last Modified: Tue, 17 Nov 2026 22:12:13 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:967fdb85a086ac4a28f3db41ed2719694e27050f5d57f1ea95c5ee4cc1845d24`  
		Last Modified: Tue, 17 Nov 2026 22:12:13 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-25-al2023` - unknown; unknown

```console
$ docker pull maven@sha256:98e5fb45ee88fd3f46a6e34a1d73995559c777fd8244de7b3ae703383a766d91
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6243883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecb8b62ef3671bea57e4c19ec1416f53b804e48c3a8b89b2f6f8864733476914`

```dockerfile
```

-	Layers:
	-	`sha256:e9a9e744624e4a599a1d48dda9d6dbb605bf65f6af0717577e9d19e5a4e5550a`  
		Last Modified: Tue, 17 Nov 2026 22:12:13 GMT  
		Size: 6.2 MB (6228362 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2bf04f8f427eab5aab137821cab3d34fcbffd565842bec72a7029b4cd7805a44`  
		Last Modified: Tue, 17 Nov 2026 22:12:13 GMT  
		Size: 15.5 KB (15521 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-25-al2023` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:fafe49787409dcb2c952645d13e022c81b274c3e8a1e4cad45a4289b2a7815f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **425.1 MB (425098082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a0a3e346b62470159ed6cee27b4059fdd7ac5f1dbe40ae7da344e6c133c8c10`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 16 Nov 2026 22:29:21 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 22:29:21 GMT
CMD ["/bin/bash"]
# Tue, 17 Nov 2026 21:34:57 GMT
ARG version=25.0.5.1.2-1
# Tue, 17 Nov 2026 21:34:57 GMT
ARG resource_version=25.0.5.1.2
# Tue, 17 Nov 2026 21:34:57 GMT
ARG package_version=1
# Tue, 17 Nov 2026 21:34:57 GMT
# ARGS: version=25.0.5.1.2-1 resource_version=25.0.5.1.2 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 17 Nov 2026 21:34:57 GMT
ENV LANG=C.UTF-8
# Tue, 17 Nov 2026 21:34:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Tue, 17 Nov 2026 22:12:11 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Tue, 17 Nov 2026 22:12:11 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 17 Nov 2026 22:12:11 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 17 Nov 2026 22:12:11 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 17 Nov 2026 22:12:11 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 17 Nov 2026 22:12:11 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 17 Nov 2026 22:12:11 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 17 Nov 2026 22:12:11 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 17 Nov 2026 22:12:11 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 17 Nov 2026 22:12:11 GMT
ARG USER_HOME_DIR=/root
# Tue, 17 Nov 2026 22:12:11 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 17 Nov 2026 22:12:11 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 17 Nov 2026 22:12:11 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:ec15fd39d3176482c0c3086a0be29d9028611fd79d15bccd7da39e67bbfceeab`  
		Last Modified: Thu, 12 Nov 2026 22:05:26 GMT  
		Size: 53.5 MB (53453077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a12ca9bdf610fdaa9db8bf1928514118b73146715b46118d3d6a4c02e66fdcf7`  
		Last Modified: Tue, 17 Nov 2026 21:35:22 GMT  
		Size: 187.5 MB (187540128 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:965fb40b487b46a45453695a6fa79e22426c9617b5d220eb5afdf7ace46c2039`  
		Last Modified: Tue, 17 Nov 2026 22:12:33 GMT  
		Size: 174.0 MB (174044848 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d9c34a61b1430572c1523d353caaeaf08764a89283a99ae3899560b5d6f8262`  
		Last Modified: Tue, 17 Nov 2026 22:12:30 GMT  
		Size: 10.1 MB (10059019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e7e3824d2f6aca483227ee9770745b66893c36cee81d90191a1cd9e01118ad5`  
		Last Modified: Tue, 17 Nov 2026 22:12:29 GMT  
		Size: 852.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43c4d1a27ffdf7cc0252bdaeb5a925ae4695247f2429f3f6c204f901820f0599`  
		Last Modified: Tue, 17 Nov 2026 22:12:29 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-25-al2023` - unknown; unknown

```console
$ docker pull maven@sha256:aa110cbc583c14b404087b00008fc5f83ce5a512ee4e0c519bb2cadfe496b481
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6243033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2b8b88f497f8f77e7d18623b8f34144dbe62a3b39eb336264eb84b1ebd23c54`

```dockerfile
```

-	Layers:
	-	`sha256:c50221c3d2126633dbb576c6503c0df5b41c6061ab4bf86d8a4fcdcefe400d4b`  
		Last Modified: Tue, 17 Nov 2026 22:12:29 GMT  
		Size: 6.2 MB (6227343 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a065f13cac21335e6ff78fcd4c1f993eae6109d7fbc8b89d3dfc583199faf4b4`  
		Last Modified: Tue, 17 Nov 2026 22:12:29 GMT  
		Size: 15.7 KB (15690 bytes)  
		MIME: application/vnd.in-toto+json
