## `maven:3-amazoncorretto-11`

```console
$ docker pull maven@sha256:c152208e476e23948e2a070c28de81da51b6f104301f5a6fcab3f0618506fb64
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-11` - linux; amd64

```console
$ docker pull maven@sha256:9551011542e6450da3c7c246c1f1dcaeed5b6a803f867fc7701a33fb3bc43f1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **366.5 MB (366544705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:212d7bce0be55fd9e26b3b29f9c4a58cd79f2ca87caaa28f62bf1caf13225b2a`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 04 Aug 2026 00:27:38 GMT
COPY /rootfs/ / # buildkit
# Tue, 04 Aug 2026 00:27:38 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 00:57:25 GMT
ARG version=11.0.32.9-1
# Tue, 04 Aug 2026 00:57:25 GMT
# ARGS: version=11.0.32.9-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-jmods-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 04 Aug 2026 00:57:25 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 00:57:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
# Tue, 04 Aug 2026 20:27:14 GMT
RUN yum install -y tar which gzip # TODO remove # buildkit
# Tue, 04 Aug 2026 20:27:15 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Tue, 04 Aug 2026 20:27:15 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 04 Aug 2026 20:27:15 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 04 Aug 2026 20:27:15 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 04 Aug 2026 20:27:15 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 04 Aug 2026 20:27:15 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 04 Aug 2026 20:27:15 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 04 Aug 2026 20:27:15 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 04 Aug 2026 20:27:15 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 04 Aug 2026 20:27:15 GMT
ARG USER_HOME_DIR=/root
# Tue, 04 Aug 2026 20:27:15 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 04 Aug 2026 20:27:15 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 04 Aug 2026 20:27:15 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:1c635d63e15b914a52c850733b73b200164c1b4f22ce422b48b4130f93dee906`  
		Last Modified: Tue, 28 Jul 2026 03:02:31 GMT  
		Size: 54.6 MB (54572680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e65b4d939eb36e1b241115abf3fd2b8e59a07310c0aea8ee5d768bb7bbd9565d`  
		Last Modified: Tue, 04 Aug 2026 00:57:45 GMT  
		Size: 153.5 MB (153470096 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c8f1f221bcba5cb941f1ebf82a1b2640049db897358c8f84f61479b705f52ef`  
		Last Modified: Tue, 04 Aug 2026 20:27:35 GMT  
		Size: 135.8 MB (135824302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bef17daa19db29a4346649644c6f84f6979c92e634a57d880d2ecd255918e91`  
		Last Modified: Tue, 04 Aug 2026 20:27:32 GMT  
		Size: 13.3 MB (13316642 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c88036e827b1f70d2263781291b19ab23ff18a18d6141ce33f307fd032d797f9`  
		Last Modified: Tue, 04 Aug 2026 20:27:32 GMT  
		Size: 9.4 MB (9359975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6ec3561d7becfc2b78c8a5a8cf9da2f22fe4ce4861a42b524a6df95779a2d52`  
		Last Modified: Tue, 04 Aug 2026 20:27:32 GMT  
		Size: 852.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13fbd36638b2b38a1b1fb71f7e42e75aa2551d31e62c14b1281c28ca6bae6ee6`  
		Last Modified: Tue, 04 Aug 2026 20:27:33 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-11` - unknown; unknown

```console
$ docker pull maven@sha256:6c406f3ef326d002f8bc4ad8b3be6fb6d7dffc42bf4b973b8e48482d9469bcb5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6288865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c607ffaa90ddca94a19b3ae1085a72f79d687bc0c8d17834a06cdd3cb491a045`

```dockerfile
```

-	Layers:
	-	`sha256:5355d6e89c9f0a6a006b64e5888c41b8329233243ce9ee05beb4ca592934afc5`  
		Last Modified: Tue, 04 Aug 2026 20:27:32 GMT  
		Size: 6.3 MB (6271570 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:07c2643d89b2933438613dd257c14909a79ffa366db989973bae16a86427fe92`  
		Last Modified: Tue, 04 Aug 2026 20:27:31 GMT  
		Size: 17.3 KB (17295 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-11` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:b01256300607a2040ec864ff6e2bfe7b13eeeb2a5ad612bdbe26f9a03db31e65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **362.5 MB (362523256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10943f2bbd70f0a4c9446235227edad4ef7db63b6a21bce4ec60c9ec17c53352`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 04 Aug 2026 00:27:37 GMT
COPY /rootfs/ / # buildkit
# Tue, 04 Aug 2026 00:27:37 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 00:57:10 GMT
ARG version=11.0.32.9-1
# Tue, 04 Aug 2026 00:57:10 GMT
# ARGS: version=11.0.32.9-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-jmods-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 04 Aug 2026 00:57:10 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 00:57:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
# Tue, 04 Aug 2026 20:26:56 GMT
RUN yum install -y tar which gzip # TODO remove # buildkit
# Tue, 04 Aug 2026 20:26:58 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Tue, 04 Aug 2026 20:26:58 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 04 Aug 2026 20:26:58 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 04 Aug 2026 20:26:58 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 04 Aug 2026 20:26:58 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 04 Aug 2026 20:26:58 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 04 Aug 2026 20:26:58 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 04 Aug 2026 20:26:58 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 04 Aug 2026 20:26:58 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 04 Aug 2026 20:26:58 GMT
ARG USER_HOME_DIR=/root
# Tue, 04 Aug 2026 20:26:58 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 04 Aug 2026 20:26:58 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 04 Aug 2026 20:26:58 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:0d194348effd1a9f66c459a1b81ed9823b1301b8d182e914b8ddc71c54c528e5`  
		Last Modified: Tue, 28 Jul 2026 08:44:17 GMT  
		Size: 53.4 MB (53448657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d27a3d81687d5a8e482e74098568a47768bea8f87d5d4f7b4bdd67670d0f7e84`  
		Last Modified: Tue, 04 Aug 2026 00:57:32 GMT  
		Size: 152.0 MB (152043082 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7123b9c5b1b4302090ddb11235b563c9a631c962bb84eaa81956f35fd18e246`  
		Last Modified: Tue, 04 Aug 2026 20:27:19 GMT  
		Size: 134.1 MB (134105264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4896201447dc76f244be8c80a7abec874adfd577410ab43b45a24e93b7422aeb`  
		Last Modified: Tue, 04 Aug 2026 20:27:16 GMT  
		Size: 13.6 MB (13565266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c3202b0bde19e48472a1466f322b809e6ed78b6bcec85d3992a2c0a249ab1d4`  
		Last Modified: Tue, 04 Aug 2026 20:27:16 GMT  
		Size: 9.4 MB (9359977 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd36fcd46d56dfc7f78850f2768c00f0b6a91ab05a2c90c977ddaaf38424f37f`  
		Last Modified: Tue, 04 Aug 2026 20:27:15 GMT  
		Size: 852.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ca0259ffef9099f707c460cab5bbf47d9f2224a6e992dd5f4ec61065b80b0b8`  
		Last Modified: Tue, 04 Aug 2026 20:27:17 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-11` - unknown; unknown

```console
$ docker pull maven@sha256:c7b91da32b26f38e18d124cb35420b13e78a449ab0abcbf60e11044afaf8fb1b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6288858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e14d14c55e280720d20d3dd1a3845f9fe9812845008e597126d811f25168316f`

```dockerfile
```

-	Layers:
	-	`sha256:0c42b951d9cae9c8ac12bc0943d5c537a0fa9ba5011cc71e06b34ed9a8360ed1`  
		Last Modified: Tue, 04 Aug 2026 20:27:16 GMT  
		Size: 6.3 MB (6271380 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:633f3f12104fcd7145f62e941b27711a193225c9d2f73a737ae74e3d523d53bf`  
		Last Modified: Tue, 04 Aug 2026 20:27:15 GMT  
		Size: 17.5 KB (17478 bytes)  
		MIME: application/vnd.in-toto+json
