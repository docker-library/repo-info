## `maven:3-amazoncorretto-21-al2023`

```console
$ docker pull maven@sha256:adf38080dc6a55a1a6bc83ad8e1ade0f4ca88a9636215e1be56d7a2af312805f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-21-al2023` - linux; amd64

```console
$ docker pull maven@sha256:79b2b832859e64effad3575309c88fd92782e0de70457423fcc98a6d9fbd9c4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **396.2 MB (396231128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4fec1e84e56e8c4349e0af117e651d6830f777a337976ea4953bfbfade3d2ec`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 28 Sep 2026 19:59:36 GMT
COPY /rootfs/ / # buildkit
# Mon, 28 Sep 2026 19:59:36 GMT
CMD ["/bin/bash"]
# Mon, 28 Sep 2026 20:14:23 GMT
ARG version=21.0.12.12-1
# Mon, 28 Sep 2026 20:14:23 GMT
ARG package_version=1
# Mon, 28 Sep 2026 20:14:23 GMT
# ARGS: version=21.0.12.12-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 28 Sep 2026 20:14:23 GMT
ENV LANG=C.UTF-8
# Mon, 28 Sep 2026 20:14:23 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Fri, 02 Oct 2026 03:42:38 GMT
RUN yum install -y tar which gzip # TODO remove # buildkit
# Fri, 02 Oct 2026 03:42:40 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Fri, 02 Oct 2026 03:42:40 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 02 Oct 2026 03:42:40 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 02 Oct 2026 03:42:40 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 02 Oct 2026 03:42:40 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 02 Oct 2026 03:42:40 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 02 Oct 2026 03:42:40 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 02 Oct 2026 03:42:40 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 02 Oct 2026 03:42:40 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 02 Oct 2026 03:42:40 GMT
ARG USER_HOME_DIR=/root
# Fri, 02 Oct 2026 03:42:40 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 02 Oct 2026 03:42:40 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 02 Oct 2026 03:42:40 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:3ee87b1055c51d2ac7dc8988b8fcd770985201b17d5a14a7907e4b854064f5ca`  
		Last Modified: Sat, 19 Sep 2026 02:22:41 GMT  
		Size: 54.6 MB (54629827 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6276e101fcea16b2382c692d72d82fd032ba00e7d50c18a8e8b683e36787f10a`  
		Last Modified: Mon, 28 Sep 2026 20:14:45 GMT  
		Size: 170.4 MB (170443738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cba1e14807042ee0f58c6a649909c82f307be67de9ab9e4c2092cefa51072b10`  
		Last Modified: Fri, 02 Oct 2026 03:43:01 GMT  
		Size: 147.6 MB (147572321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f4a4b533259cf7e0fa105cb4088cb4d82445e34ff4eebf267516aae0bf88931`  
		Last Modified: Fri, 02 Oct 2026 03:42:58 GMT  
		Size: 13.5 MB (13525227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a633641dd590a246766f3a24fe8b8df1ae8370d9479a644e7fb3234b999e0c89`  
		Last Modified: Fri, 02 Oct 2026 03:42:58 GMT  
		Size: 10.1 MB (10059004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46bc79b09f7846ef4155912b0dcb41373113fc483de8762473511a25ef0c2cff`  
		Last Modified: Fri, 02 Oct 2026 03:42:57 GMT  
		Size: 852.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71c26afb123935e92ea07f2839bbe68caf3d21199cbb8bfc15b4ff786f49655c`  
		Last Modified: Fri, 02 Oct 2026 03:42:58 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-21-al2023` - unknown; unknown

```console
$ docker pull maven@sha256:52113d4424ed349489fc1c09eada44413e65535445ee8919ba85ac6c1e1a6a06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6271660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:891ea28e20663c1d906370fa7d6e32931bc69a898ab8e169743fbf9dc8be5122`

```dockerfile
```

-	Layers:
	-	`sha256:3c2f964ecc5a9edf16f7848d68aac3286608a55188b5fd9c8bbc1a69bf0e297a`  
		Last Modified: Fri, 02 Oct 2026 03:42:57 GMT  
		Size: 6.3 MB (6254358 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8b927ba264b058cd7dbf0623275f5d9e3bee162c7a926026fc166fce421a51c4`  
		Last Modified: Fri, 02 Oct 2026 03:42:57 GMT  
		Size: 17.3 KB (17302 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-21-al2023` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:c624b97568f39352443e6caafe2236a02b4df823899916880ab50a87c0f96a97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **392.1 MB (392085110 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7615df48a09d7b2518ad2f82699cc262dc750ae61c90f5ab181a27318b2fbaed`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 28 Sep 2026 19:59:15 GMT
COPY /rootfs/ / # buildkit
# Mon, 28 Sep 2026 19:59:15 GMT
CMD ["/bin/bash"]
# Mon, 28 Sep 2026 20:14:14 GMT
ARG version=21.0.12.12-1
# Mon, 28 Sep 2026 20:14:14 GMT
ARG package_version=1
# Mon, 28 Sep 2026 20:14:14 GMT
# ARGS: version=21.0.12.12-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 28 Sep 2026 20:14:14 GMT
ENV LANG=C.UTF-8
# Mon, 28 Sep 2026 20:14:14 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Fri, 02 Oct 2026 03:32:02 GMT
RUN yum install -y tar which gzip # TODO remove # buildkit
# Fri, 02 Oct 2026 03:32:05 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Fri, 02 Oct 2026 03:32:05 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 02 Oct 2026 03:32:05 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 02 Oct 2026 03:32:05 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 02 Oct 2026 03:32:05 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 02 Oct 2026 03:32:05 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 02 Oct 2026 03:32:05 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 02 Oct 2026 03:32:05 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 02 Oct 2026 03:32:05 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 02 Oct 2026 03:32:05 GMT
ARG USER_HOME_DIR=/root
# Fri, 02 Oct 2026 03:32:05 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 02 Oct 2026 03:32:05 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 02 Oct 2026 03:32:05 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:f009e1877a8ba7c389c4ac710ae4817f0017fbb8f3bb9e42058d4d18753a3319`  
		Last Modified: Sat, 19 Sep 2026 02:00:18 GMT  
		Size: 53.5 MB (53497787 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22f43cd5000810c2bac413d5deb5c95086aaeb30eab21e01ae69fdc61ebfbfd1`  
		Last Modified: Mon, 28 Sep 2026 20:14:38 GMT  
		Size: 168.7 MB (168715995 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01c07f960773e3f19d4af292818669c37e5183f48b0cff650d080b08a63f209f`  
		Last Modified: Fri, 02 Oct 2026 03:32:27 GMT  
		Size: 146.0 MB (146041446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4748d3004d09920f08b5db1ea45214fe5c72d34f92602c91680c9cb7c6b10f14`  
		Last Modified: Fri, 02 Oct 2026 03:32:24 GMT  
		Size: 13.8 MB (13769875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86ccefb10b1dc4057c29ab870b11c8394471e599f5d000976618a004d62a31e0`  
		Last Modified: Fri, 02 Oct 2026 03:32:24 GMT  
		Size: 10.1 MB (10058999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdaeba91a1ce3d7a19aad822217cc7ad76f1734ec8eed683dfa6d7e88f66cb35`  
		Last Modified: Fri, 02 Oct 2026 03:32:24 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08d6571d848cc009916a7f8a343c04cf577ed46c86ffb6643de5f8a96cb8b29e`  
		Last Modified: Fri, 02 Oct 2026 03:32:25 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-21-al2023` - unknown; unknown

```console
$ docker pull maven@sha256:24f9709e3a32fdcd97efbb023b64579e93ddbe7a75d5dbe19722b85de67e44eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6270814 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc914835fd31cd1aefe4d8ade35c75f35efa2dc8fad1eb6017d641d5591e7c53`

```dockerfile
```

-	Layers:
	-	`sha256:caa5277df5f94daf9012bad3fa121b5b3258b1574b3962308f2637a50d3f832e`  
		Last Modified: Fri, 02 Oct 2026 03:32:24 GMT  
		Size: 6.3 MB (6253328 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2f1d8b4f1d457c684704a0dab3050a6ef7363bb88c89ec0c823cdb77836161f5`  
		Last Modified: Fri, 02 Oct 2026 03:32:23 GMT  
		Size: 17.5 KB (17486 bytes)  
		MIME: application/vnd.in-toto+json
