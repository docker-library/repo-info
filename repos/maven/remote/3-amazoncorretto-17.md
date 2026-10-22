## `maven:3-amazoncorretto-17`

```console
$ docker pull maven@sha256:39a495cd1207265cabcada2d9da7a3c9ab791ed7eade35fcb3065a062b63c90b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-17` - linux; amd64

```console
$ docker pull maven@sha256:131ef8faef2eaa6fa6e12dd5f2a1f7a1e27c2ff28422209f6210324fc102599a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **385.7 MB (385701441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6370c539c8fc34cd7235a214ff7d706cbbfb67c897a4b30bf5d7b69f7d2bfa9`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 21 Oct 2026 22:45:19 GMT
COPY /rootfs/ / # buildkit
# Wed, 21 Oct 2026 22:45:19 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 23:28:11 GMT
ARG version=17.0.20.13-1
# Wed, 21 Oct 2026 23:28:11 GMT
ARG package_version=1
# Wed, 21 Oct 2026 23:28:11 GMT
# ARGS: version=17.0.20.13-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 21 Oct 2026 23:28:11 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 23:28:11 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
# Thu, 22 Oct 2026 00:18:52 GMT
RUN yum install -y tar which gzip # TODO remove # buildkit
# Thu, 22 Oct 2026 00:18:53 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Thu, 22 Oct 2026 00:18:53 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 22 Oct 2026 00:18:53 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 22 Oct 2026 00:18:53 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 22 Oct 2026 00:18:53 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 22 Oct 2026 00:18:53 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 22 Oct 2026 00:18:53 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 22 Oct 2026 00:18:53 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 22 Oct 2026 00:18:53 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 22 Oct 2026 00:18:53 GMT
ARG USER_HOME_DIR=/root
# Thu, 22 Oct 2026 00:18:53 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 22 Oct 2026 00:18:53 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 22 Oct 2026 00:18:53 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:7234d0a9b6ba1270c7bb653ee62a443a1dbb6fdfa833336edd3c0691c2524d1f`  
		Last Modified: Thu, 01 Oct 2026 02:22:29 GMT  
		Size: 54.6 MB (54630770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff1ae9487769b73c0896ee595f50ecbab13247197fb2c1c330f0ec1dfda0b5f6`  
		Last Modified: Wed, 21 Oct 2026 23:28:31 GMT  
		Size: 157.2 MB (157176465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d2984a16a32629f02b363bc359596c4e651452a9739051f1838ed81104f1295`  
		Last Modified: Thu, 22 Oct 2026 00:19:12 GMT  
		Size: 150.3 MB (150309569 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7c0f2758c479ed9666aee807ecdc92f4d6131fabee71bcbd2228e6884b22442`  
		Last Modified: Thu, 22 Oct 2026 00:19:09 GMT  
		Size: 13.5 MB (13524616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba377c570ec993442a021bb8c7268bf49649d1f51dd3dc52f968723add9765d3`  
		Last Modified: Thu, 22 Oct 2026 00:19:09 GMT  
		Size: 10.1 MB (10059012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66287ada77336907c09fe1f9c54756cd5ca0338883ea08c82d0832be34e31daf`  
		Last Modified: Thu, 22 Oct 2026 00:19:09 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:080833b1d1a53eadff41fe36eecbb68a887cacddbeb779baf61775ffbff79b17`  
		Last Modified: Thu, 22 Oct 2026 00:19:10 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-17` - unknown; unknown

```console
$ docker pull maven@sha256:dea6adc4ae38fbce8fda2442e2b14c991a8b07b4d46d6290c296eb140e058480
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6269234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59771fb32b9098e7812619e94c3e76c48c601e76de3802152d9cde67a60ff66f`

```dockerfile
```

-	Layers:
	-	`sha256:cdc02b62dc5ed6fd7133af811711f22736d4a6b1974d73c12bcff928279b2173`  
		Last Modified: Thu, 22 Oct 2026 00:19:09 GMT  
		Size: 6.3 MB (6251932 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:50a3314f5adf9d51459908e3ad41ffbc1da5fc8adf5d879a56f5ba94c116aaea`  
		Last Modified: Thu, 22 Oct 2026 00:19:08 GMT  
		Size: 17.3 KB (17302 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-17` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:a1085f707ffdadc7263a856f33d8e899caaf89f1575ac64aa2f21ef85eb8fb89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **381.8 MB (381782687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50a186cdfaea140870dee9ad058d692deadbe57478258af9b2d44618e0303a33`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 05 Oct 2026 18:28:31 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:28:31 GMT
CMD ["/bin/bash"]
# Wed, 14 Oct 2026 17:07:57 GMT
ARG version=17.0.20.13-1
# Wed, 14 Oct 2026 17:07:57 GMT
ARG package_version=1
# Wed, 14 Oct 2026 17:07:57 GMT
# ARGS: version=17.0.20.13-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 14 Oct 2026 17:07:57 GMT
ENV LANG=C.UTF-8
# Wed, 14 Oct 2026 17:07:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
# Sat, 17 Oct 2026 03:18:10 GMT
RUN yum install -y tar which gzip # TODO remove # buildkit
# Sat, 17 Oct 2026 03:18:13 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Sat, 17 Oct 2026 03:18:13 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Sat, 17 Oct 2026 03:18:13 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Sat, 17 Oct 2026 03:18:13 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Sat, 17 Oct 2026 03:18:13 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Sat, 17 Oct 2026 03:18:13 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 17 Oct 2026 03:18:13 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Sat, 17 Oct 2026 03:18:13 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Sat, 17 Oct 2026 03:18:13 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Sat, 17 Oct 2026 03:18:13 GMT
ARG USER_HOME_DIR=/root
# Sat, 17 Oct 2026 03:18:13 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 17 Oct 2026 03:18:13 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 17 Oct 2026 03:18:13 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:3009834f3cf8cead1d3dea9d3cbebc711c021c4aed04759be014247a0c3181e7`  
		Last Modified: Thu, 01 Oct 2026 02:22:31 GMT  
		Size: 53.5 MB (53504398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:154b2b63e41b8926d75f93d6a93dc46b91678d65e12e27ba0185b9c627a6eca8`  
		Last Modified: Wed, 14 Oct 2026 17:08:19 GMT  
		Size: 156.0 MB (155978404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:125f21c73d7726cfd93dbfd23749e74d1dac661e2337941c27ce502c2dc81a19`  
		Last Modified: Sat, 17 Oct 2026 03:18:34 GMT  
		Size: 148.5 MB (148470248 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dab7f11bf9aef21ed336c62ce486fd476a6f6619714b2593d8026f5153d58d40`  
		Last Modified: Sat, 17 Oct 2026 03:18:31 GMT  
		Size: 13.8 MB (13769611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8959ac4e826991cd821ece49d0fc786742f8166958f68844ebac3f7d4390d049`  
		Last Modified: Sat, 17 Oct 2026 03:18:31 GMT  
		Size: 10.1 MB (10059015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0754fe60a56bf6516236efd2a945c42ac2ef2c882786aba0e66d57507efc9e2d`  
		Last Modified: Sat, 17 Oct 2026 03:18:30 GMT  
		Size: 852.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87e6afec48f47f0229e8655096faa9eb412e7382f5529331395367ca0a44df96`  
		Last Modified: Sat, 17 Oct 2026 03:18:31 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-17` - unknown; unknown

```console
$ docker pull maven@sha256:298092019d7bfffadbc7391a76982551cb3c869883789757d21202f3cf3ff3f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6268384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e3e8aa595d6835baea1c2c6a642f4adb9f487f72bb946835f996e4d287346b7`

```dockerfile
```

-	Layers:
	-	`sha256:edb1cbb5d856fbc3bdd76fc4412d79cdbfe06d759d96028ce750d9e8fa15740c`  
		Last Modified: Sat, 17 Oct 2026 03:18:31 GMT  
		Size: 6.3 MB (6250899 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cb5a8ef327d07d3c1d005242bafcc1372e861e254e446cc12dff774f17e2318f`  
		Last Modified: Sat, 17 Oct 2026 03:18:30 GMT  
		Size: 17.5 KB (17485 bytes)  
		MIME: application/vnd.in-toto+json
