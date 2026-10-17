## `maven:3-amazoncorretto-11-al2023`

```console
$ docker pull maven@sha256:1628435b6be0f65a7e7d327c0f8a8e28805b6db83befffb84e7f5a5e48efcb6e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-11-al2023` - linux; amd64

```console
$ docker pull maven@sha256:5b390f63a22e086aeda10a72cf1ed438388c39c4af0e65dcbcc1d13d1b9d6b26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **382.0 MB (382037288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bb6ff83fb2f7746cd7e33f39ca016fe2ae2dee3a0b2413523e8f39679464f5c`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 05 Oct 2026 18:29:04 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:29:04 GMT
CMD ["/bin/bash"]
# Wed, 14 Oct 2026 17:07:33 GMT
ARG version=11.0.32.13-1
# Wed, 14 Oct 2026 17:07:33 GMT
# ARGS: version=11.0.32.13-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-jmods-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 14 Oct 2026 17:07:33 GMT
ENV LANG=C.UTF-8
# Wed, 14 Oct 2026 17:07:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
# Sat, 17 Oct 2026 03:17:20 GMT
RUN yum install -y tar which gzip # TODO remove # buildkit
# Sat, 17 Oct 2026 03:17:22 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Sat, 17 Oct 2026 03:17:22 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Sat, 17 Oct 2026 03:17:22 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Sat, 17 Oct 2026 03:17:22 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Sat, 17 Oct 2026 03:17:22 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Sat, 17 Oct 2026 03:17:22 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 17 Oct 2026 03:17:22 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Sat, 17 Oct 2026 03:17:22 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Sat, 17 Oct 2026 03:17:22 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Sat, 17 Oct 2026 03:17:22 GMT
ARG USER_HOME_DIR=/root
# Sat, 17 Oct 2026 03:17:22 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 17 Oct 2026 03:17:22 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 17 Oct 2026 03:17:22 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:7234d0a9b6ba1270c7bb653ee62a443a1dbb6fdfa833336edd3c0691c2524d1f`  
		Last Modified: Thu, 01 Oct 2026 02:22:29 GMT  
		Size: 54.6 MB (54630770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6d6f9a0012548ca6d43cc292769e01308911c8e70ca0575b8cd6a232b12cd7e`  
		Last Modified: Wed, 14 Oct 2026 17:07:54 GMT  
		Size: 153.5 MB (153509475 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:811dfed18ba99d60e5eca24b614f5a1865d6d166062031e80be82a1bcb4ececb`  
		Last Modified: Sat, 17 Oct 2026 03:17:44 GMT  
		Size: 150.3 MB (150308128 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72acf289922c0679d6e1b18a459c518d9a2cb846c15fcfc3f5b17612fd01e608`  
		Last Modified: Sat, 17 Oct 2026 03:17:41 GMT  
		Size: 13.5 MB (13528889 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:651c61c99d084bf907e153a49573e693b5e5605cd8fe55c02892a8730bc001a0`  
		Last Modified: Sat, 17 Oct 2026 03:17:41 GMT  
		Size: 10.1 MB (10059015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7594df1b74709a05040e19a6383688cd020d2e49e586a160718e6fcae1f10c1`  
		Last Modified: Sat, 17 Oct 2026 03:17:40 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58cb5a27a54b94e7e9e52ffc8d5b1270a09c33d0bb14323b99918aff742f67e4`  
		Last Modified: Sat, 17 Oct 2026 03:17:42 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-11-al2023` - unknown; unknown

```console
$ docker pull maven@sha256:a1e98c0e3fc439961b82db56df0ea6bbdd9af0cda77484a85af4cdbd2f491c3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6293926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a495d9ea10dfe448f77ca2778f46a25e3c5ea06e078bb3beb14a4bbf565b8bf`

```dockerfile
```

-	Layers:
	-	`sha256:42c1abf2b09fbc993625d7efed9251e2f1ede1d246d11ce16b15b0b4179707dd`  
		Last Modified: Sat, 17 Oct 2026 03:17:41 GMT  
		Size: 6.3 MB (6276623 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:723fa1afffaa2c93847b48fff0a335f66657c5a7fd5226f083559c7d5959acb2`  
		Last Modified: Sat, 17 Oct 2026 03:17:40 GMT  
		Size: 17.3 KB (17303 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-11-al2023` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:5102c5f7b2fa635261bcf82930b13f68e5934616a5af7656cda20b921b05b6ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **377.9 MB (377893932 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9842541aa2d01f3090a1615f52aa7e71d28ba06f038fc5e60f08f6ce06e0abe4`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 05 Oct 2026 18:28:31 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:28:31 GMT
CMD ["/bin/bash"]
# Wed, 14 Oct 2026 17:07:37 GMT
ARG version=11.0.32.13-1
# Wed, 14 Oct 2026 17:07:37 GMT
# ARGS: version=11.0.32.13-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-jmods-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 14 Oct 2026 17:07:37 GMT
ENV LANG=C.UTF-8
# Wed, 14 Oct 2026 17:07:37 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
# Sat, 17 Oct 2026 03:17:50 GMT
RUN yum install -y tar which gzip # TODO remove # buildkit
# Sat, 17 Oct 2026 03:17:52 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Sat, 17 Oct 2026 03:17:52 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Sat, 17 Oct 2026 03:17:52 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Sat, 17 Oct 2026 03:17:52 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Sat, 17 Oct 2026 03:17:52 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Sat, 17 Oct 2026 03:17:52 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 17 Oct 2026 03:17:52 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Sat, 17 Oct 2026 03:17:52 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Sat, 17 Oct 2026 03:17:53 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Sat, 17 Oct 2026 03:17:53 GMT
ARG USER_HOME_DIR=/root
# Sat, 17 Oct 2026 03:17:53 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 17 Oct 2026 03:17:53 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 17 Oct 2026 03:17:53 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:3009834f3cf8cead1d3dea9d3cbebc711c021c4aed04759be014247a0c3181e7`  
		Last Modified: Thu, 01 Oct 2026 02:22:31 GMT  
		Size: 53.5 MB (53504398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac40c517dc6a00a5b3425d215e4dc749e354bd52d4f8b0e1e4903ad6f0db6003`  
		Last Modified: Wed, 14 Oct 2026 17:08:00 GMT  
		Size: 152.1 MB (152083230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4849d3a9477ad6200f7b2ccca810a17d31c06370b6fcb012b3ca4374cf3e8239`  
		Last Modified: Sat, 17 Oct 2026 03:18:14 GMT  
		Size: 148.5 MB (148473218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbdf1ac7c3e3e5de1beddd3df1fb5b1dc1fb835e8f0c796998614a19922edaa2`  
		Last Modified: Sat, 17 Oct 2026 03:18:11 GMT  
		Size: 13.8 MB (13773066 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57137e34981278930698d4b76e46b9092f7168275302e97d87dc703f7347cef5`  
		Last Modified: Sat, 17 Oct 2026 03:18:11 GMT  
		Size: 10.1 MB (10059008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a953473efe29f95f55eae0f2fac28881a68804cfaf77bdfed701d61dd4cf950`  
		Last Modified: Sat, 17 Oct 2026 03:18:10 GMT  
		Size: 852.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5142b88e9c2c7fd062dadce6bd3cd010d56f3143727e18af3b3e0e4108b296a2`  
		Last Modified: Sat, 17 Oct 2026 03:18:11 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-11-al2023` - unknown; unknown

```console
$ docker pull maven@sha256:957d28d22ea79abad78620b91e735e1d9b3a7c15d814f722ff770f65bbf58686
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6293919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a29206adabd8583e7a6fafff63cb110aa19f441bbc2e67e91edf165055cdacd5`

```dockerfile
```

-	Layers:
	-	`sha256:cc4b34b4e9e9a5313fac5d73c2ac32f65db14843497226a82f277e5f9e7fd8bd`  
		Last Modified: Sat, 17 Oct 2026 03:18:11 GMT  
		Size: 6.3 MB (6276433 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fd1bed67e94424c13da05ac3b1bd55c059563a66239fb00933d6471791596f67`  
		Last Modified: Sat, 17 Oct 2026 03:18:10 GMT  
		Size: 17.5 KB (17486 bytes)  
		MIME: application/vnd.in-toto+json
