## `maven:3-amazoncorretto-8-al2023`

```console
$ docker pull maven@sha256:d6d6675bd2ded4f236de893a04fee5de81b7d1c1d5db6362084cf84422896f8e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-8-al2023` - linux; amd64

```console
$ docker pull maven@sha256:fc361271802618ce7995eef9a9dfe3675f9917362fd64d3921f87bdde36bce49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.9 MB (343861421 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8afa7a85195d0ee1784b53d650c467c0ed3725a2bad1378abd5fd1b0fb26f3a0`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 28 Sep 2026 19:59:36 GMT
COPY /rootfs/ / # buildkit
# Mon, 28 Sep 2026 19:59:36 GMT
CMD ["/bin/bash"]
# Mon, 28 Sep 2026 20:11:08 GMT
ARG version=1.8.0_504.b01-1
# Mon, 28 Sep 2026 20:11:08 GMT
# ARGS: version=1.8.0_504.b01-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 28 Sep 2026 20:11:08 GMT
ENV LANG=C.UTF-8
# Mon, 28 Sep 2026 20:11:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
# Fri, 02 Oct 2026 03:43:29 GMT
RUN yum install -y tar which gzip # TODO remove # buildkit
# Fri, 02 Oct 2026 03:43:31 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Fri, 02 Oct 2026 03:43:31 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 02 Oct 2026 03:43:31 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 02 Oct 2026 03:43:31 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 02 Oct 2026 03:43:31 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 02 Oct 2026 03:43:31 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 02 Oct 2026 03:43:31 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 02 Oct 2026 03:43:31 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 02 Oct 2026 03:43:31 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 02 Oct 2026 03:43:31 GMT
ARG USER_HOME_DIR=/root
# Fri, 02 Oct 2026 03:43:31 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 02 Oct 2026 03:43:31 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 02 Oct 2026 03:43:31 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:3ee87b1055c51d2ac7dc8988b8fcd770985201b17d5a14a7907e4b854064f5ca`  
		Last Modified: Sat, 19 Sep 2026 02:22:41 GMT  
		Size: 54.6 MB (54629827 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfc8cd43d570dce234a0f21ec799a55fafbb9ace038e2e55ece45223379ea981`  
		Last Modified: Mon, 28 Sep 2026 20:11:27 GMT  
		Size: 118.1 MB (118094099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14c6de511a8fd2a41c07a3079e630607d8d98db3b94d6b981d8c8f785d85463d`  
		Last Modified: Fri, 02 Oct 2026 03:43:51 GMT  
		Size: 147.6 MB (147565271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7522a24034f63ef7cc4fa0a71339ec1588daa9f093e1948f2daae2639d6d9d0a`  
		Last Modified: Fri, 02 Oct 2026 03:43:48 GMT  
		Size: 13.5 MB (13512195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1709d649cc32ac4daf3ec178e8aea38e9f71fa05462ca5f145024f10b96a1df`  
		Last Modified: Fri, 02 Oct 2026 03:43:48 GMT  
		Size: 10.1 MB (10059020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57f7ec04c3b18375461105c0d024da916702e3aba2f4165ff12aadb7657c5367`  
		Last Modified: Fri, 02 Oct 2026 03:43:47 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5c42e84cf2d4aeffec244bd62bdb061091403731b41e2f5c2f6c97091e4bed3`  
		Last Modified: Fri, 02 Oct 2026 03:43:49 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-8-al2023` - unknown; unknown

```console
$ docker pull maven@sha256:24c2fd3a3295c7e1f3c4752f21d1b803672cbf75e1d7bcf3482e80e306ce4bd4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6645648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a242d301a41124ded5acf4d857bc1e7cb4aca6eb1f94cbbba66009465e0465c8`

```dockerfile
```

-	Layers:
	-	`sha256:14d693631e91679f71823740e3a92d38a3dbc0dc946a60a39a425a1cc11d95d7`  
		Last Modified: Fri, 02 Oct 2026 03:43:48 GMT  
		Size: 6.6 MB (6628355 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5112b8ca968ab3789f216ab8df26fc5162d8c4e3c1e6236560b0616c314ce671`  
		Last Modified: Fri, 02 Oct 2026 03:43:47 GMT  
		Size: 17.3 KB (17293 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-8-al2023` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:bf1250050882cae263427a7ed8419e00e0ce13688cad15033f09f3e3811c3857
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **341.3 MB (341321534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9bbed324382be2bf341f44f9eb4dc7ab2bfc846014aeca10cdde65b3e0110b3`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 28 Sep 2026 19:59:15 GMT
COPY /rootfs/ / # buildkit
# Mon, 28 Sep 2026 19:59:15 GMT
CMD ["/bin/bash"]
# Mon, 28 Sep 2026 20:11:01 GMT
ARG version=1.8.0_504.b01-1
# Mon, 28 Sep 2026 20:11:01 GMT
# ARGS: version=1.8.0_504.b01-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 28 Sep 2026 20:11:01 GMT
ENV LANG=C.UTF-8
# Mon, 28 Sep 2026 20:11:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
# Fri, 02 Oct 2026 03:33:50 GMT
RUN yum install -y tar which gzip # TODO remove # buildkit
# Fri, 02 Oct 2026 03:33:52 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Fri, 02 Oct 2026 03:33:52 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 02 Oct 2026 03:33:52 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 02 Oct 2026 03:33:52 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 02 Oct 2026 03:33:52 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 02 Oct 2026 03:33:52 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 02 Oct 2026 03:33:52 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 02 Oct 2026 03:33:52 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 02 Oct 2026 03:33:52 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 02 Oct 2026 03:33:52 GMT
ARG USER_HOME_DIR=/root
# Fri, 02 Oct 2026 03:33:52 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 02 Oct 2026 03:33:52 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 02 Oct 2026 03:33:52 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:f009e1877a8ba7c389c4ac710ae4817f0017fbb8f3bb9e42058d4d18753a3319`  
		Last Modified: Sat, 19 Sep 2026 02:00:18 GMT  
		Size: 53.5 MB (53497787 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:529fb78f2c2c1ab9f5505c5e791591f1c150085aee877d1ce423618c3414f01f`  
		Last Modified: Mon, 28 Sep 2026 20:11:21 GMT  
		Size: 118.0 MB (117973351 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70026fd140e3d306236c146a679f3628dc96817975b8f4b9be9577a543893e5a`  
		Last Modified: Fri, 02 Oct 2026 03:34:13 GMT  
		Size: 146.0 MB (146036085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:548d088e92ffc8575632e6ffe7d8367159f156c04d00eb57d38246db8b63f5ef`  
		Last Modified: Fri, 02 Oct 2026 03:34:10 GMT  
		Size: 13.8 MB (13754305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6573aebb242960066528f3b0e37597a711071081469b7a3b21e40b8bf77eed7b`  
		Last Modified: Fri, 02 Oct 2026 03:34:10 GMT  
		Size: 10.1 MB (10058999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1e136d6f2d7f8bb5a06e1c5029e10e49e0dfdd72e0ddbfd7b0f7465835e4186`  
		Last Modified: Fri, 02 Oct 2026 03:34:09 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11cfeca901b104887346f4a3c978ad8d427f91912637de9a9e041f5a47662842`  
		Last Modified: Fri, 02 Oct 2026 03:34:10 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-8-al2023` - unknown; unknown

```console
$ docker pull maven@sha256:a6d4669ebceded86584a1ae3e48ad6ce5c943f9a9133777ffb33d0a69c7c0898
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6646121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4867c8d6030e26819197967999cefefa554f6bae71f6f48afb7f1d1270aa78f3`

```dockerfile
```

-	Layers:
	-	`sha256:c17e2bf3849ba32bb207dee89541660cde60d4880b958c9a34d152493a1f82ca`  
		Last Modified: Fri, 02 Oct 2026 03:34:10 GMT  
		Size: 6.6 MB (6628645 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e4d36ab0d1f5ddbbdc37e70dedc1c3d8a1a75b71d46873790d73c86f88edbe1e`  
		Last Modified: Fri, 02 Oct 2026 03:34:09 GMT  
		Size: 17.5 KB (17476 bytes)  
		MIME: application/vnd.in-toto+json
