## `maven:3-amazoncorretto-8`

```console
$ docker pull maven@sha256:64f6ddc0c381fa6f10786acf3f83cdd7dae0f178b08c7a39e25dafcb4715de17
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-8` - linux; amd64

```console
$ docker pull maven@sha256:4fe348d1c0872402db8d1c291a51ba1e08ff945422266990d08c75ebe60c55e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **335.9 MB (335893823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2002e9e34db9e8edd450df985c6c907def48faf8dde4f74c3d64e0a11c5a789`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 20 Aug 2026 16:55:33 GMT
COPY /rootfs/ / # buildkit
# Thu, 20 Aug 2026 16:55:33 GMT
CMD ["/bin/bash"]
# Thu, 20 Aug 2026 17:18:51 GMT
ARG version=1.8.0_504.b01-1
# Thu, 20 Aug 2026 17:18:51 GMT
# ARGS: version=1.8.0_504.b01-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 20 Aug 2026 17:18:51 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:18:51 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
# Wed, 09 Sep 2026 04:43:13 GMT
RUN yum install -y tar which gzip # TODO remove # buildkit
# Wed, 09 Sep 2026 04:43:15 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Wed, 09 Sep 2026 04:43:15 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 09 Sep 2026 04:43:15 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 09 Sep 2026 04:43:15 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 09 Sep 2026 04:43:15 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 09 Sep 2026 04:43:15 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 09 Sep 2026 04:43:15 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 09 Sep 2026 04:43:15 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 09 Sep 2026 04:43:15 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 09 Sep 2026 04:43:15 GMT
ARG USER_HOME_DIR=/root
# Wed, 09 Sep 2026 04:43:15 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 09 Sep 2026 04:43:15 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 09 Sep 2026 04:43:15 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:f206cad061713321049e1fe0c85223e018266fd8bccebf3156ef94c125bbd2e0`  
		Last Modified: Mon, 17 Aug 2026 23:42:26 GMT  
		Size: 54.6 MB (54583847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61165ddf680cb88b1ed4eb9f8c1535db661569f12d8f999a90178fcaa385b0a0`  
		Last Modified: Thu, 20 Aug 2026 17:19:09 GMT  
		Size: 118.1 MB (118088873 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca6b7eeea8927d86419fbefd6b41144c228bd582903245c3ea3e4926dd5315a6`  
		Last Modified: Wed, 09 Sep 2026 04:43:36 GMT  
		Size: 140.4 MB (140352002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40869039c61f6a6e1add5c5bf51f6868580a37d13878042f0a00d5aa9e4d96ae`  
		Last Modified: Wed, 09 Sep 2026 04:43:33 GMT  
		Size: 13.5 MB (13508118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa5e3265254fe911e6d2d301c6b987ccfb67e14cd38c1dead893ae9b6a0fe119`  
		Last Modified: Wed, 09 Sep 2026 04:43:33 GMT  
		Size: 9.4 MB (9359974 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0e7cfb79c2df060ab619c8545ac95a9c8e6141a3b338f60794533b728b71c79`  
		Last Modified: Wed, 09 Sep 2026 04:43:33 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb9f5a59c159b821f25dccb9460e02f31c0c3a5b7a2cbc8fb26798d885d01c05`  
		Last Modified: Wed, 09 Sep 2026 04:43:34 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-8` - unknown; unknown

```console
$ docker pull maven@sha256:7bdb108e4257acbead0ff9c4c7e101fe8cddb815ef95254aacf3b2e84090dd64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6640587 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d0e3f40c0904ab5534db1fc2e41e59cd1afbe2e64d9c403905fb177c58abf93`

```dockerfile
```

-	Layers:
	-	`sha256:a2f34a5062a0b1143f6fd516ae59337e5d67c24342d0db83514a0d748f2ddfc7`  
		Last Modified: Wed, 09 Sep 2026 04:43:33 GMT  
		Size: 6.6 MB (6623302 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:84a8c4b3720a6b3af06652c90edbf678e393ed40310660fa4c799023712967bb`  
		Last Modified: Wed, 09 Sep 2026 04:43:33 GMT  
		Size: 17.3 KB (17285 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-8` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:484cb4a57e7088542ec1dd70745683a4edbfaf73facef7921632fdabfc0c115e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **333.2 MB (333160653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75c6dd580a8fd657216f5317d2c2c68dd05a7175b3ca61c076190a5361ba8a64`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 20 Aug 2026 16:55:33 GMT
COPY /rootfs/ / # buildkit
# Thu, 20 Aug 2026 16:55:33 GMT
CMD ["/bin/bash"]
# Thu, 20 Aug 2026 17:15:43 GMT
ARG version=1.8.0_504.b01-1
# Thu, 20 Aug 2026 17:15:43 GMT
# ARGS: version=1.8.0_504.b01-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 20 Aug 2026 17:15:43 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:15:43 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
# Wed, 09 Sep 2026 04:28:41 GMT
RUN yum install -y tar which gzip # TODO remove # buildkit
# Wed, 09 Sep 2026 04:28:43 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Wed, 09 Sep 2026 04:28:43 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 09 Sep 2026 04:28:43 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 09 Sep 2026 04:28:43 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 09 Sep 2026 04:28:43 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 09 Sep 2026 04:28:43 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 09 Sep 2026 04:28:43 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 09 Sep 2026 04:28:43 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 09 Sep 2026 04:28:43 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 09 Sep 2026 04:28:43 GMT
ARG USER_HOME_DIR=/root
# Wed, 09 Sep 2026 04:28:43 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 09 Sep 2026 04:28:43 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 09 Sep 2026 04:28:43 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:108a276670f119053938f97626b5d9916306b34861b9c0cdd8d64a50bf504ad8`  
		Last Modified: Mon, 17 Aug 2026 23:42:41 GMT  
		Size: 53.5 MB (53450887 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a72e131d81c175ba4592da48c9792aae54d1a0c647f345b9dd291bb0510da203`  
		Last Modified: Thu, 20 Aug 2026 17:16:02 GMT  
		Size: 118.0 MB (117970317 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbd981e184a1a8842fad7f48f205963047ee37d450365548ff7f12902055862b`  
		Last Modified: Wed, 09 Sep 2026 04:29:04 GMT  
		Size: 138.6 MB (138626222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:453faf089f88bd9b2b4e071e7213ce303520b979558243f2146dca41f2c011d6`  
		Last Modified: Wed, 09 Sep 2026 04:29:02 GMT  
		Size: 13.8 MB (13752248 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f31bb7f7adf9d6764be60badbc7ad60a94e0eac91f279f236882b746c0ace1c3`  
		Last Modified: Wed, 09 Sep 2026 04:29:01 GMT  
		Size: 9.4 MB (9359970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cafd2d523c1b81de1430345fa1ed9fe5e9de7050bcfc06337cd89f108cfa42e`  
		Last Modified: Wed, 09 Sep 2026 04:29:01 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6082e8beb6068f7524495916a1f270814dfe773e17bfaaaf40510efa19a60f0`  
		Last Modified: Wed, 09 Sep 2026 04:29:02 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-8` - unknown; unknown

```console
$ docker pull maven@sha256:d5d109bd352bce86c30192f0d47d1fd8f80daeb9e27df05297bc569627cb88b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6641061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6b174293090eab5585e30f76ce402db9387cc640db40594a6ba77511aafc657`

```dockerfile
```

-	Layers:
	-	`sha256:2a6f7f1c653a36a1d498da10a2edd1080d86633aa74f031a0c75ffb82fee37c0`  
		Last Modified: Wed, 09 Sep 2026 04:29:01 GMT  
		Size: 6.6 MB (6623592 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d7ac77e26769e63a10fd274f4d13a9ed155bf634716a56b9708b040c2f26ab82`  
		Last Modified: Wed, 09 Sep 2026 04:29:01 GMT  
		Size: 17.5 KB (17469 bytes)  
		MIME: application/vnd.in-toto+json
