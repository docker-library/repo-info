## `maven:3-amazoncorretto-8`

```console
$ docker pull maven@sha256:59bb75231291d76b769e524a16138c78a1fd07dbd6e00cbcd75bf236b535b3b5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-8` - linux; amd64

```console
$ docker pull maven@sha256:62860588741f4a4636ec5b25d6673bfb1ca8c65beee4c27aae1bae9f478073db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **363.4 MB (363356875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c4124f1274b5a338efc660fd9a0f60634de001643696a08a12cd42ac47e4751`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 23 Nov 2026 20:27:44 GMT
COPY /rootfs/ / # buildkit
# Mon, 23 Nov 2026 20:27:44 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 21:09:09 GMT
ARG version=1.8.0_514.b01-1
# Mon, 23 Nov 2026 21:09:09 GMT
# ARGS: version=1.8.0_514.b01-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 23 Nov 2026 21:09:09 GMT
ENV LANG=C.UTF-8
# Mon, 23 Nov 2026 21:09:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
# Mon, 23 Nov 2026 21:32:24 GMT
RUN yum install -y tar which gzip # TODO remove # buildkit
# Mon, 23 Nov 2026 21:32:25 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Mon, 23 Nov 2026 21:32:25 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Mon, 23 Nov 2026 21:32:25 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Mon, 23 Nov 2026 21:32:25 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Mon, 23 Nov 2026 21:32:25 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Mon, 23 Nov 2026 21:32:25 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 23 Nov 2026 21:32:25 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Mon, 23 Nov 2026 21:32:25 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Mon, 23 Nov 2026 21:32:26 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Mon, 23 Nov 2026 21:32:26 GMT
ARG USER_HOME_DIR=/root
# Mon, 23 Nov 2026 21:32:26 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 23 Nov 2026 21:32:26 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 23 Nov 2026 21:32:26 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:88cafb2c9567db642a80315f76be36da2bd56094bdf8c8155ad2f5c3345fb5f4`  
		Last Modified: Fri, 20 Nov 2026 20:24:07 GMT  
		Size: 54.6 MB (54565169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9be86d11ad93807b97d160be6fa52b2874778559293143ff98da78f33eaa3a14`  
		Last Modified: Mon, 23 Nov 2026 21:09:29 GMT  
		Size: 118.1 MB (118127958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:507f17f8fa868629318d8c9c72b0873f9349894024e91af49cace71661ed8b7c`  
		Last Modified: Mon, 23 Nov 2026 21:32:45 GMT  
		Size: 167.8 MB (167806895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d9aecdbf3e5511e75bf7e03a0a1661d37592fe1b969f6aa7f19e5276e784621`  
		Last Modified: Mon, 23 Nov 2026 21:32:42 GMT  
		Size: 13.5 MB (13504551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01c161c9af927b91ccf1ae6116cbcccae602f1f5d8cbe69e3c8a744c3256ec44`  
		Last Modified: Mon, 23 Nov 2026 21:32:42 GMT  
		Size: 9.4 MB (9351293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44018bba2348413b989f42b5ab445b22da20d2f0f20bf28e3e3e936a56139ad9`  
		Last Modified: Mon, 23 Nov 2026 21:32:41 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cb96baae0f1610bbf2b6da86274b2819cbb377b62e9cf8175df2023b60e225e`  
		Last Modified: Mon, 23 Nov 2026 21:32:42 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-8` - unknown; unknown

```console
$ docker pull maven@sha256:88dc29a6dbf4c246d23d0d84554b8f98e3f1aadb5c1daaf6d23ad8c8d9a01f6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6640008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:169d4c168bc5611694a0b43a9fcb16f0385850277aee36c8c45fe6a2b96a1d53`

```dockerfile
```

-	Layers:
	-	`sha256:ceed15fd6b0a0015ae7215c462082ec2fd0e2440584a7ce6a19e070596c68199`  
		Last Modified: Mon, 23 Nov 2026 21:32:41 GMT  
		Size: 6.6 MB (6622719 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f40904f775cd484c69a6f369a508f1fe4af0b5017486bbe6e5b591b472439497`  
		Last Modified: Mon, 23 Nov 2026 21:32:41 GMT  
		Size: 17.3 KB (17289 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-8` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:d8dfaea2e25b4fd2871cdba75476dac84d0085bd5532d79881522619f81c9a24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **359.7 MB (359705115 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b237d5c2d0bede85b8035e097bd18b429bbd42b64915d2b8c777ff07d0459e97`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 18 Nov 2026 21:16:23 GMT
COPY /rootfs/ / # buildkit
# Wed, 18 Nov 2026 21:16:23 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 21:32:43 GMT
ARG version=1.8.0_514.b01-1
# Wed, 18 Nov 2026 21:32:43 GMT
# ARGS: version=1.8.0_514.b01-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 18 Nov 2026 21:32:43 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 21:32:43 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
# Fri, 20 Nov 2026 06:15:21 GMT
RUN yum install -y tar which gzip # TODO remove # buildkit
# Fri, 20 Nov 2026 06:15:23 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Fri, 20 Nov 2026 06:15:23 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 20 Nov 2026 06:15:23 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 06:15:23 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 06:15:23 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 20 Nov 2026 06:15:23 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 20 Nov 2026 06:15:23 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 20 Nov 2026 06:15:23 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 06:15:23 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 20 Nov 2026 06:15:23 GMT
ARG USER_HOME_DIR=/root
# Fri, 20 Nov 2026 06:15:23 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 20 Nov 2026 06:15:23 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 20 Nov 2026 06:15:23 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:7dd5afb185e9abad9919aa0d5eaa430bb9babdb805532cdb871320227597f486`  
		Last Modified: Wed, 18 Nov 2026 01:44:00 GMT  
		Size: 53.5 MB (53453550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9b085efbc5a54f246168cc1fbc37f3ec680693539724b402242c61bdcf760da`  
		Last Modified: Wed, 18 Nov 2026 21:33:03 GMT  
		Size: 118.0 MB (118017359 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce4ceb1b160469c2f57fbcfd1531a328bbea6a9cadfaf8492f948327e6862325`  
		Last Modified: Fri, 20 Nov 2026 06:15:45 GMT  
		Size: 164.4 MB (164420123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3e20b1f8fa70a2d8184dff73fab0ee6534e4fb7db974c98ff634d129a74f87b`  
		Last Modified: Fri, 20 Nov 2026 06:15:42 GMT  
		Size: 13.8 MB (13754066 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cee73351706e0028f30c8e08bc053e13872662cbe89ade898c4b7240b2970a59`  
		Last Modified: Fri, 20 Nov 2026 06:15:42 GMT  
		Size: 10.1 MB (10059012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03f10afa1518c13c177da37eff096b8b54f5416cffbfa4a3fc22b091025054fb`  
		Last Modified: Fri, 20 Nov 2026 06:15:42 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:311466cbeaeeef062df52ff6424be38fe1e6fda5dcbbe0af1d92e15769b80f12`  
		Last Modified: Fri, 20 Nov 2026 06:15:43 GMT  
		Size: 156.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-8` - unknown; unknown

```console
$ docker pull maven@sha256:a1850ec56eb6d61530be24ca26e6f6bf9228caba2f4109d81f6e2c50cd6f727b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6646792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27920d5c587572a7110998ab7fd3948b9a382c184bee9c066d95214f6a2c4172`

```dockerfile
```

-	Layers:
	-	`sha256:dd2d5ea06a5f5262843a8d64b0b98b46cc8b201c8b6c21802ffb740d634371b6`  
		Last Modified: Fri, 20 Nov 2026 06:15:42 GMT  
		Size: 6.6 MB (6629315 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e7c0bf3321b116c9071a2c365519786b9b007eb99f08dcf7424bf5afd6ebf3f9`  
		Last Modified: Fri, 20 Nov 2026 06:15:42 GMT  
		Size: 17.5 KB (17477 bytes)  
		MIME: application/vnd.in-toto+json
