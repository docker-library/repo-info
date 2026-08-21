## `maven:3-amazoncorretto-17-al2023`

```console
$ docker pull maven@sha256:771f7b6dbf09ad8b9a0ca910b8b852650d1cff3e6c5d29c81e8f0a0c3d631642
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-17-al2023` - linux; amd64

```console
$ docker pull maven@sha256:d6b04213a7fcd308d6ee441eb00a663e6169d4d81dc6a308d450f5e8edef0540
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **375.0 MB (374966928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:296f4805879a2d211d67270a3d3d0ad99ab7472e883c10557ce53b0a5ef2283f`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 20 Aug 2026 16:55:33 GMT
COPY /rootfs/ / # buildkit
# Thu, 20 Aug 2026 16:55:33 GMT
CMD ["/bin/bash"]
# Thu, 20 Aug 2026 17:20:18 GMT
ARG version=17.0.20.10-1
# Thu, 20 Aug 2026 17:20:18 GMT
ARG package_version=1
# Thu, 20 Aug 2026 17:20:18 GMT
# ARGS: version=17.0.20.10-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 20 Aug 2026 17:20:18 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:20:18 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
# Fri, 21 Aug 2026 20:39:19 GMT
RUN yum install -y tar which gzip # TODO remove # buildkit
# Fri, 21 Aug 2026 20:39:21 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Fri, 21 Aug 2026 20:39:21 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 21 Aug 2026 20:39:21 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 21 Aug 2026 20:39:21 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 21 Aug 2026 20:39:21 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 21 Aug 2026 20:39:21 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 21 Aug 2026 20:39:21 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 21 Aug 2026 20:39:21 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 21 Aug 2026 20:39:21 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 21 Aug 2026 20:39:21 GMT
ARG USER_HOME_DIR=/root
# Fri, 21 Aug 2026 20:39:21 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 21 Aug 2026 20:39:21 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 21 Aug 2026 20:39:21 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:f206cad061713321049e1fe0c85223e018266fd8bccebf3156ef94c125bbd2e0`  
		Last Modified: Mon, 17 Aug 2026 23:42:26 GMT  
		Size: 54.6 MB (54583847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfead4a6ee7773d2dbc579b59ce8c1135ecf004db916308e9802df9eb8fe9f5a`  
		Last Modified: Thu, 20 Aug 2026 17:20:40 GMT  
		Size: 157.1 MB (157139355 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4da7c7e4a300431f9513c2654eaf2e7e44e3b3dc86f2e10ef02819aee1e8c22`  
		Last Modified: Fri, 21 Aug 2026 20:39:41 GMT  
		Size: 140.4 MB (140357693 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c89f715995ec2150ec62bcd04133d79a3cd8fb5debf6ece189a6a66e23bc3044`  
		Last Modified: Fri, 21 Aug 2026 20:39:38 GMT  
		Size: 13.5 MB (13525050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88a03e5b8c5ca8abc817cc34733ee0e83f08166b0e93cf60f3f6605bd89318eb`  
		Last Modified: Fri, 21 Aug 2026 20:39:38 GMT  
		Size: 9.4 MB (9359971 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0804c3b5a05540ee1bd9aedb1949d9692eba6fbf89d993bc23a6d9bad2c5ba5`  
		Last Modified: Fri, 21 Aug 2026 20:39:37 GMT  
		Size: 852.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcee407733d94ddc4bc94075d7b4d896c798fa06c6e59bb637848bb2a6f8c177`  
		Last Modified: Fri, 21 Aug 2026 20:39:38 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-17-al2023` - unknown; unknown

```console
$ docker pull maven@sha256:ec565f4b5bcf64d6c2c6050a04ad7c021d00b00f2cc13f3180c85405bb7faf4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6264174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:017bb9f94d422bf742cf36a1f17556bc4c07ae8f9b8aab5efbbded5f07b07c3e`

```dockerfile
```

-	Layers:
	-	`sha256:1b55f588edbb1a12a8309551f52b3b709a5665a0284e8af1792509f51ddb1219`  
		Last Modified: Fri, 21 Aug 2026 20:39:37 GMT  
		Size: 6.2 MB (6246879 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f093784486b11751ed75b421cbe9ec6194540b7f5b2a5a8b498eb21e34676c75`  
		Last Modified: Fri, 21 Aug 2026 20:39:37 GMT  
		Size: 17.3 KB (17295 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-17-al2023` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:931c602cc02f9623221bf2ea3f7c1d2289cbd336214db41b683f51e62631cfa9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **371.2 MB (371163118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56aa892e4b69fa0c0ccfc035fdcb4d0311716bd02278b03605d29caaba41ef03`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 20 Aug 2026 16:55:33 GMT
COPY /rootfs/ / # buildkit
# Thu, 20 Aug 2026 16:55:33 GMT
CMD ["/bin/bash"]
# Thu, 20 Aug 2026 17:17:00 GMT
ARG version=17.0.20.10-1
# Thu, 20 Aug 2026 17:17:00 GMT
ARG package_version=1
# Thu, 20 Aug 2026 17:17:00 GMT
# ARGS: version=17.0.20.10-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 20 Aug 2026 17:17:00 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:17:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
# Fri, 21 Aug 2026 19:24:24 GMT
RUN yum install -y tar which gzip # TODO remove # buildkit
# Fri, 21 Aug 2026 19:24:27 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Fri, 21 Aug 2026 19:24:27 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 21 Aug 2026 19:24:27 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 21 Aug 2026 19:24:27 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 21 Aug 2026 19:24:27 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 21 Aug 2026 19:24:27 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 21 Aug 2026 19:24:27 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 21 Aug 2026 19:24:27 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 21 Aug 2026 19:24:27 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 21 Aug 2026 19:24:27 GMT
ARG USER_HOME_DIR=/root
# Fri, 21 Aug 2026 19:24:27 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 21 Aug 2026 19:24:27 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 21 Aug 2026 19:24:27 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:108a276670f119053938f97626b5d9916306b34861b9c0cdd8d64a50bf504ad8`  
		Last Modified: Mon, 17 Aug 2026 23:42:41 GMT  
		Size: 53.5 MB (53450887 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2898f49accdb0dda82fec0027f06a1977c5014ad3d546b41c09dbf32cbb1028`  
		Last Modified: Thu, 20 Aug 2026 17:17:23 GMT  
		Size: 156.0 MB (155950280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7808b4a7948cb9c7adae21849e76bc06d1b406e885d71c16b584779b37d4f659`  
		Last Modified: Fri, 21 Aug 2026 19:24:48 GMT  
		Size: 138.6 MB (138631225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1eabdbd8e2f3f273ab28050635e89fa66c1ac526a272108643f94db02cda84cf`  
		Last Modified: Fri, 21 Aug 2026 19:24:45 GMT  
		Size: 13.8 MB (13769749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c521c0a3f6990fc60d5308775e3e19cfc5b46de0f6d3606cfc090f7a84881c4f`  
		Last Modified: Fri, 21 Aug 2026 19:24:45 GMT  
		Size: 9.4 MB (9359967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80f1151f3308550439cbf57084d40d1d6c821f8eba86079db3b20480a8779bbe`  
		Last Modified: Fri, 21 Aug 2026 19:24:45 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2906475f26a93159a2dfcff0b3d76561ff8796b8f2f286136041c353fe4fc126`  
		Last Modified: Fri, 21 Aug 2026 19:24:46 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-17-al2023` - unknown; unknown

```console
$ docker pull maven@sha256:066c817671d0d62a26260aa23dc7953023752e2a92b31ebd722e219e836ae0af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6263325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d66692e88328fbad22ef71764cfc29967d423ba7b9ee0b5074442116c853666`

```dockerfile
```

-	Layers:
	-	`sha256:3a3414ee7e0d98ed9c447cbef5f3317ea803fd077b05e2874f6353e47045e43a`  
		Last Modified: Fri, 21 Aug 2026 19:24:45 GMT  
		Size: 6.2 MB (6245846 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eac54349a8453a1dc99da2e809e34417a0ccd4ec50630e70a3a751a2411b72d4`  
		Last Modified: Fri, 21 Aug 2026 19:24:44 GMT  
		Size: 17.5 KB (17479 bytes)  
		MIME: application/vnd.in-toto+json
