## `maven:3-amazoncorretto-21`

```console
$ docker pull maven@sha256:0ef83b8506e92f34278bf2acc3500ecf1f4bd2cd1159091e1f1e707adc73546a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-21` - linux; amd64

```console
$ docker pull maven@sha256:8bd39b25117eb6e008ebf33abc79155978ecb5328a3dca8d5371e6b49dc4f658
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **403.8 MB (403807964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1fb0b761269326c984c0d034778a06c30766750935e24997880fa4c1a1a2fb7`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 23 Oct 2026 00:41:03 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:41:03 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 18:09:23 GMT
ARG version=21.0.13.0.10-1
# Fri, 23 Oct 2026 18:09:23 GMT
ARG resource_version=21.0.13.0.10
# Fri, 23 Oct 2026 18:09:23 GMT
ARG package_version=1
# Fri, 23 Oct 2026 18:09:23 GMT
# ARGS: version=21.0.13.0.10-1 resource_version=21.0.13.0.10 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 23 Oct 2026 18:09:23 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 18:09:23 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Fri, 23 Oct 2026 18:23:01 GMT
RUN yum install -y tar which gzip # TODO remove # buildkit
# Fri, 23 Oct 2026 18:23:03 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Fri, 23 Oct 2026 18:23:03 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 23 Oct 2026 18:23:03 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 23 Oct 2026 18:23:03 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 23 Oct 2026 18:23:03 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 23 Oct 2026 18:23:03 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 23 Oct 2026 18:23:03 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 23 Oct 2026 18:23:03 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 23 Oct 2026 18:23:03 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 23 Oct 2026 18:23:03 GMT
ARG USER_HOME_DIR=/root
# Fri, 23 Oct 2026 18:23:03 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 23 Oct 2026 18:23:03 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 23 Oct 2026 18:23:03 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:da3e7a9e0d7ce8bd2e34f464f7fc47c97dde7880b26078690ed76ef5809d8b69`  
		Last Modified: Thu, 22 Oct 2026 01:38:41 GMT  
		Size: 54.6 MB (54648920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bc896a7d1efefd988d47538a19738fa6dc91dcd9033556363e5f7bc0ac46288`  
		Last Modified: Fri, 23 Oct 2026 18:09:46 GMT  
		Size: 170.7 MB (170742693 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b519b946c98d4718878a1663fd03f6508c38b0a5e78440acd1c9e93dd8d736d`  
		Last Modified: Fri, 23 Oct 2026 18:23:24 GMT  
		Size: 154.8 MB (154826478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:025658774202bb48fe7f6fa5f4672d700e5e3d332d0b460c5752d6e0ba468ca8`  
		Last Modified: Fri, 23 Oct 2026 18:23:19 GMT  
		Size: 13.5 MB (13529848 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a44227eb334bb52293a038899f625bf62905ea4f0cf33c3d64809b226450a1ed`  
		Last Modified: Fri, 23 Oct 2026 18:23:20 GMT  
		Size: 10.1 MB (10059017 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:412bdc33eb238dc5856655b8b4d1b7d3251da5d495c93fe33f2b86c58f3e988d`  
		Last Modified: Fri, 23 Oct 2026 18:23:18 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ddc20a071b6b4a3916196979f6e7e607132ba75f71f8e93941982559cfd433b`  
		Last Modified: Fri, 23 Oct 2026 18:23:20 GMT  
		Size: 157.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-21` - unknown; unknown

```console
$ docker pull maven@sha256:27af97d623e1dc6d047d942ba4f16aa5fd9061073cc1d2a3ed68bd74a802efed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6271667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1f3195b28cb2db9a41f7d5bde97e4c63e6800a5adb2d86ea45e7c070501b0ad`

```dockerfile
```

-	Layers:
	-	`sha256:0562d9be9f3a5fcb42e029065f4844fb3332528e02e899a9b569fd6675267cbf`  
		Last Modified: Fri, 23 Oct 2026 18:23:19 GMT  
		Size: 6.3 MB (6254364 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ff55f2c18203078e67defc78496ee343edfbef793355b2cbfa9cc3f2bcb11542`  
		Last Modified: Fri, 23 Oct 2026 18:23:18 GMT  
		Size: 17.3 KB (17303 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-21` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:1c6b15d0ed5626e557ff9a5f1a01f347500298d55e6010d9efd209ca6babd7bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **399.3 MB (399310182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51e9628bef4453049a577a91d49d5f29f7fc86b2e5dcf9b0a5c501f42883f601`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 23 Oct 2026 00:40:43 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:40:43 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 18:09:17 GMT
ARG version=21.0.13.0.10-1
# Fri, 23 Oct 2026 18:09:17 GMT
ARG resource_version=21.0.13.0.10
# Fri, 23 Oct 2026 18:09:17 GMT
ARG package_version=1
# Fri, 23 Oct 2026 18:09:17 GMT
# ARGS: version=21.0.13.0.10-1 resource_version=21.0.13.0.10 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 23 Oct 2026 18:09:17 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 18:09:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Fri, 23 Oct 2026 18:23:02 GMT
RUN yum install -y tar which gzip # TODO remove # buildkit
# Fri, 23 Oct 2026 18:23:04 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Fri, 23 Oct 2026 18:23:04 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 23 Oct 2026 18:23:04 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 23 Oct 2026 18:23:04 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 23 Oct 2026 18:23:04 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 23 Oct 2026 18:23:04 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 23 Oct 2026 18:23:04 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 23 Oct 2026 18:23:04 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 23 Oct 2026 18:23:04 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 23 Oct 2026 18:23:04 GMT
ARG USER_HOME_DIR=/root
# Fri, 23 Oct 2026 18:23:04 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 23 Oct 2026 18:23:04 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 23 Oct 2026 18:23:04 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:b9de6aa56dd75608aa129f8d7c4af23dae5b1bb2a5a2edb4e9acfd307a0af336`  
		Last Modified: Thu, 22 Oct 2026 02:52:33 GMT  
		Size: 53.5 MB (53529316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15848e3476ea8155721889d8257147875c3823d4b9bf6bfebe9419373ff5281a`  
		Last Modified: Fri, 23 Oct 2026 18:09:40 GMT  
		Size: 169.0 MB (169017611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61e8031ad3cd408ef5589f392a2f037b5f1f3f7cbcdcb726d8bcecc60b3d6741`  
		Last Modified: Fri, 23 Oct 2026 18:23:25 GMT  
		Size: 152.9 MB (152932516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:301f4870189f25b6c82f34d6fb338858155f62ff3959f9918e97676c21d1c3ed`  
		Last Modified: Fri, 23 Oct 2026 18:23:22 GMT  
		Size: 13.8 MB (13770724 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d9c03cd5f3568f4e16d22b45cea8154bd1f9c4d2466822bda1c217101d4e297`  
		Last Modified: Fri, 23 Oct 2026 18:23:22 GMT  
		Size: 10.1 MB (10059006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54e007cfee69d0b5cbe9367663caf373321eb36a6929084d9a7dc9fcc5edd71c`  
		Last Modified: Fri, 23 Oct 2026 18:23:21 GMT  
		Size: 852.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e93be05c3fb8558e86b2fc0d6a1f2cbd50268a3a957ed902e63a1b16ad7203ee`  
		Last Modified: Fri, 23 Oct 2026 18:23:23 GMT  
		Size: 157.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-21` - unknown; unknown

```console
$ docker pull maven@sha256:52893a62d49327064bc9101880144c50d7bbf5f4da39d689a9c9461d62c88707
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6270821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b18224752c6dfa8ed665089ed67f04af1d56545d1402f6209ea8b9e38fbc5852`

```dockerfile
```

-	Layers:
	-	`sha256:dfa7261db4747f1286640c79454fb5fc1488500bd35611a4b04b4ed2b4bf22bb`  
		Last Modified: Fri, 23 Oct 2026 18:23:22 GMT  
		Size: 6.3 MB (6253334 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e9b4822802f54706e83d33b0faf5b2ba2c294602e0403f3ccea5437894fad4dc`  
		Last Modified: Fri, 23 Oct 2026 18:23:21 GMT  
		Size: 17.5 KB (17487 bytes)  
		MIME: application/vnd.in-toto+json
