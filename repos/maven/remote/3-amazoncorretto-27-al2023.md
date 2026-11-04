## `maven:3-amazoncorretto-27-al2023`

```console
$ docker pull maven@sha256:c09df9f76072fd868e7c3ef692fc238b3f7c779c09f3049b1f51830f78146982
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-27-al2023` - linux; amd64

```console
$ docker pull maven@sha256:7fa2d259ce10a3a58621a6c15c0bb76df7f4ba8446433ab45ec93936f582eb2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **428.1 MB (428140347 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a975615a11c79c48ec7b97c61e4b13be7377e47a74f1f1693de34516ab8f2c58`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 02 Nov 2026 19:55:48 GMT
COPY /rootfs/ / # buildkit
# Mon, 02 Nov 2026 19:55:48 GMT
CMD ["/bin/bash"]
# Mon, 02 Nov 2026 20:12:04 GMT
ARG version=27.0.1.0.11-1
# Mon, 02 Nov 2026 20:12:04 GMT
ARG resource_version=27.0.1.0.11
# Mon, 02 Nov 2026 20:12:04 GMT
ARG package_version=1
# Mon, 02 Nov 2026 20:12:04 GMT
# ARGS: version=27.0.1.0.11-1 resource_version=27.0.1.0.11 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-27-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-27-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 02 Nov 2026 20:12:04 GMT
ENV LANG=C.UTF-8
# Mon, 02 Nov 2026 20:12:04 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-amazon-corretto
# Tue, 03 Nov 2026 23:10:28 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Tue, 03 Nov 2026 23:10:28 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 03 Nov 2026 23:10:28 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 03 Nov 2026 23:10:28 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 03 Nov 2026 23:10:28 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 03 Nov 2026 23:10:28 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 03 Nov 2026 23:10:28 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 03 Nov 2026 23:10:28 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 03 Nov 2026 23:10:28 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 03 Nov 2026 23:10:28 GMT
ARG USER_HOME_DIR=/root
# Tue, 03 Nov 2026 23:10:28 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 03 Nov 2026 23:10:28 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 03 Nov 2026 23:10:28 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:36d0e51e1ea56325505d833f7d87567b6720c396e9a5742de0f157b063545163`  
		Last Modified: Sat, 31 Oct 2026 02:35:05 GMT  
		Size: 54.6 MB (54569615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45ee8e1fd9fa9f27542e9d1e475de8f003aac40251ae3acf930380091cb51963`  
		Last Modified: Mon, 02 Nov 2026 20:12:29 GMT  
		Size: 192.0 MB (192033700 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4226a9b2697555cfdc1efcac95d3295ded2ef6bb5c5d4c0e7261f37aca51e933`  
		Last Modified: Tue, 03 Nov 2026 23:10:51 GMT  
		Size: 171.5 MB (171477014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa74b43ee2e9071c0e026166bc6df1c1db5429e7f83f6564f567ea463f6051a6`  
		Last Modified: Tue, 03 Nov 2026 23:10:48 GMT  
		Size: 10.1 MB (10059010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97d8deba99809dd1fff982f3602b946c13bcef839a006e85216f6c89f1953079`  
		Last Modified: Tue, 03 Nov 2026 23:10:48 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a68464d12d2171a818f4eb3483d5272eb52ab6f1d1d6e3dede4dfd4525bc42a0`  
		Last Modified: Tue, 03 Nov 2026 23:10:48 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-27-al2023` - unknown; unknown

```console
$ docker pull maven@sha256:62c5fb5ca5e33845d2335e9597b952dc091d34a901470a002e8ac65ddfc528ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6238216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c21fcef3d239943a8bd6c266e03e42c0afda44ada9db230e7bd87a53123b366`

```dockerfile
```

-	Layers:
	-	`sha256:12827993600c257b310fec0f132af4d48a6ac28842c783cfbbc6be2e022c591d`  
		Last Modified: Tue, 03 Nov 2026 23:10:48 GMT  
		Size: 6.2 MB (6221419 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e7301142eb3654bc18cc1af6d7d1e14e7337a493a22f04838cbe1a89834a242d`  
		Last Modified: Tue, 03 Nov 2026 23:10:48 GMT  
		Size: 16.8 KB (16797 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-27-al2023` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:92b5d7b4e457bcb31067bcbff773f405addbdb3ec4a37ed27d3d8f5ac996f669
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **423.5 MB (423506780 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:275729cd48df1f41402ab146c29076d102dd55b1a4f8f65a5369aa476a385e28`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 02 Nov 2026 19:55:47 GMT
COPY /rootfs/ / # buildkit
# Mon, 02 Nov 2026 19:55:47 GMT
CMD ["/bin/bash"]
# Mon, 02 Nov 2026 20:11:45 GMT
ARG version=27.0.1.0.11-1
# Mon, 02 Nov 2026 20:11:45 GMT
ARG resource_version=27.0.1.0.11
# Mon, 02 Nov 2026 20:11:45 GMT
ARG package_version=1
# Mon, 02 Nov 2026 20:11:45 GMT
# ARGS: version=27.0.1.0.11-1 resource_version=27.0.1.0.11 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-27-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-27-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 02 Nov 2026 20:11:45 GMT
ENV LANG=C.UTF-8
# Mon, 02 Nov 2026 20:11:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-amazon-corretto
# Tue, 03 Nov 2026 23:16:35 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Tue, 03 Nov 2026 23:16:35 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 03 Nov 2026 23:16:35 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 03 Nov 2026 23:16:35 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 03 Nov 2026 23:16:35 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 03 Nov 2026 23:16:35 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 03 Nov 2026 23:16:35 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 03 Nov 2026 23:16:35 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 03 Nov 2026 23:16:35 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 03 Nov 2026 23:16:35 GMT
ARG USER_HOME_DIR=/root
# Tue, 03 Nov 2026 23:16:35 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 03 Nov 2026 23:16:35 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 03 Nov 2026 23:16:35 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:c1eee8f81fa5e953bb6eab0ff6f612967f0ef8b1dc9fac3cb2319b1021f7a245`  
		Last Modified: Sat, 31 Oct 2026 02:35:03 GMT  
		Size: 53.5 MB (53456123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51a555f30fafccc7b5c5f85b3e4775b393ba84b4049465ca7df320f81af6c974`  
		Last Modified: Mon, 02 Nov 2026 20:12:11 GMT  
		Size: 190.2 MB (190189464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82278b3c4ec51683008f4c42849b74eca6c4f40894516a55f35f61d23a378196`  
		Last Modified: Tue, 03 Nov 2026 23:16:58 GMT  
		Size: 169.8 MB (169801214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3801f5120fc29ac8f2423916e2ec4b874967e4eea318487581817de1a20acdfe`  
		Last Modified: Tue, 03 Nov 2026 23:16:55 GMT  
		Size: 10.1 MB (10058970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ccb422426a3b63ae77002a65e74b19764492027f03549070ba6c4f0ef15eee2`  
		Last Modified: Tue, 03 Nov 2026 23:16:54 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6cbec7218e2d1f08aca6e0ad762808b224a4ffc66652ffd043bea03884ecc07`  
		Last Modified: Tue, 03 Nov 2026 23:16:54 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-27-al2023` - unknown; unknown

```console
$ docker pull maven@sha256:82e4ae972afe54a7794400958e2ebbc3afc3795b3c7ba672465688c9e73646d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6237451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cce3983a3e79a178cf9b01f1bbc3b95a5a2337ab43ab6b449dddb9cf16710fec`

```dockerfile
```

-	Layers:
	-	`sha256:cc9bda623cc6169b8b58a9ba32a9f46f856a02c06850e02b7ed6e22037589098`  
		Last Modified: Tue, 03 Nov 2026 23:16:54 GMT  
		Size: 6.2 MB (6220438 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1e764cef31294479b35cae1be12a8955806c71256faaafc5ab936f5e21b0aabc`  
		Last Modified: Tue, 03 Nov 2026 23:16:54 GMT  
		Size: 17.0 KB (17013 bytes)  
		MIME: application/vnd.in-toto+json
