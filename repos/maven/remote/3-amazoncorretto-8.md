## `maven:3-amazoncorretto-8`

```console
$ docker pull maven@sha256:de946372587a14fd4a83fa7c7e8a49fccdd5bb4f8423da0f0a2c7a10920bbffd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-8` - linux; amd64

```console
$ docker pull maven@sha256:cd8283484d4dcefe3287d5317ebc72a24c9f2d3d4747608a8da02e4dd12f631b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **362.7 MB (362658281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a463d41817c4ce05b0bef874099570a4960f0c54ae790331e87a634ea29193d0`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 18 Nov 2026 21:16:24 GMT
COPY /rootfs/ / # buildkit
# Wed, 18 Nov 2026 21:16:24 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 21:32:19 GMT
ARG version=1.8.0_514.b01-1
# Wed, 18 Nov 2026 21:32:19 GMT
# ARGS: version=1.8.0_514.b01-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 18 Nov 2026 21:32:19 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 21:32:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
# Fri, 20 Nov 2026 06:18:09 GMT
RUN yum install -y tar which gzip # TODO remove # buildkit
# Fri, 20 Nov 2026 06:18:11 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Fri, 20 Nov 2026 06:18:11 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 20 Nov 2026 06:18:11 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 06:18:11 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 06:18:11 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 20 Nov 2026 06:18:11 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 20 Nov 2026 06:18:11 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 20 Nov 2026 06:18:11 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 06:18:11 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 20 Nov 2026 06:18:11 GMT
ARG USER_HOME_DIR=/root
# Fri, 20 Nov 2026 06:18:11 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 20 Nov 2026 06:18:11 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 20 Nov 2026 06:18:11 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:48c7a3aa33f84b2fa7af701f558c0a97251fe0ca6790119c6f912decc8cad76d`  
		Last Modified: Tue, 17 Nov 2026 23:01:37 GMT  
		Size: 54.6 MB (54569091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:695be0e5bcb274fe7403faf612438cb9c196668c09fe2794a0d01339b2d6cde9`  
		Last Modified: Wed, 18 Nov 2026 21:32:36 GMT  
		Size: 118.1 MB (118131328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f93bb111490148f0e650df8e014c18b2319ce6dd531550cc61f0f66f570f7e33`  
		Last Modified: Fri, 20 Nov 2026 06:18:34 GMT  
		Size: 166.4 MB (166390319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a065b1995c58a007de67932c77eb50a855b228e55653b4c93c4ce6bf61b2bc9`  
		Last Modified: Fri, 20 Nov 2026 06:18:31 GMT  
		Size: 13.5 MB (13507523 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2465925b271889782b4b76e957c06e388561da87d5b190d2676ff5f549300b6f`  
		Last Modified: Fri, 20 Nov 2026 06:18:31 GMT  
		Size: 10.1 MB (10059011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fca6384bf6f013af12f8082ed88ddf2225765005c9ccbf78faa1bb6f05f32dc6`  
		Last Modified: Fri, 20 Nov 2026 06:18:30 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0884afd77b364e0293b09b2f470def50f105424757c629bef2abd09f9d56ea55`  
		Last Modified: Fri, 20 Nov 2026 06:18:31 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-8` - unknown; unknown

```console
$ docker pull maven@sha256:e24ba3030dd0cd5ec353810691301a9b2d012a8e1a47b7ddb6b098d06b6ab917
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6646318 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00cdcc61234b3789a652ef9d59ff1e4c2f990f009381847987c35b29e8f4dee1`

```dockerfile
```

-	Layers:
	-	`sha256:4a82cc95a0fe0cdc06e0e1a2a464b94a4e715c1d5301adfb13ba07b7f821dfef`  
		Last Modified: Fri, 20 Nov 2026 06:18:30 GMT  
		Size: 6.6 MB (6629025 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7524d23a6b06dd3dd017b5ee118e68a5752f49c257742d62e8096b06ce54474e`  
		Last Modified: Fri, 20 Nov 2026 06:18:30 GMT  
		Size: 17.3 KB (17293 bytes)  
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
