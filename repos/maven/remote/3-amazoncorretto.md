## `maven:3-amazoncorretto`

```console
$ docker pull maven@sha256:daa00f52581c9702d7c8d09342ce1a5df6f191ef4edb762e75a0c1dfa05dcb03
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto` - linux; amd64

```console
$ docker pull maven@sha256:e496269d1fad1f9b36917ae828f1aa9beb3967a17d9ab8ad8c747d529219dce1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **434.6 MB (434575276 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d2202d8a234c99c8b9472912f0905dc098892544b86e839cbd7876a462d4eb9`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 23 Nov 2026 20:27:44 GMT
COPY /rootfs/ / # buildkit
# Mon, 23 Nov 2026 20:27:44 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 21:12:03 GMT
ARG version=27.0.1.1.4-1
# Mon, 23 Nov 2026 21:12:03 GMT
ARG resource_version=27.0.1.1.4
# Mon, 23 Nov 2026 21:12:03 GMT
ARG package_version=1
# Mon, 23 Nov 2026 21:12:03 GMT
# ARGS: version=27.0.1.1.4-1 resource_version=27.0.1.1.4 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-27-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-27-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 23 Nov 2026 21:12:03 GMT
ENV LANG=C.UTF-8
# Mon, 23 Nov 2026 21:12:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-amazon-corretto
# Mon, 23 Nov 2026 21:32:17 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Mon, 23 Nov 2026 21:32:17 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Mon, 23 Nov 2026 21:32:17 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Mon, 23 Nov 2026 21:32:17 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Mon, 23 Nov 2026 21:32:17 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Mon, 23 Nov 2026 21:32:17 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 23 Nov 2026 21:32:17 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Mon, 23 Nov 2026 21:32:17 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Mon, 23 Nov 2026 21:32:17 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Mon, 23 Nov 2026 21:32:17 GMT
ARG USER_HOME_DIR=/root
# Mon, 23 Nov 2026 21:32:17 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 23 Nov 2026 21:32:17 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 23 Nov 2026 21:32:17 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:88cafb2c9567db642a80315f76be36da2bd56094bdf8c8155ad2f5c3345fb5f4`  
		Last Modified: Fri, 20 Nov 2026 20:24:07 GMT  
		Size: 54.6 MB (54565169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1717f9b0b98bfb08e823ec71fb79b4dd96d1dd07eb65bfa718200690b9464de4`  
		Last Modified: Mon, 23 Nov 2026 21:12:25 GMT  
		Size: 192.0 MB (192023230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbaad2e6c688dfd118d59897d303eefea6cc82966212a89cb4557a514e8309a7`  
		Last Modified: Mon, 23 Nov 2026 21:32:38 GMT  
		Size: 178.6 MB (178634577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af212c0c3db72b3b4ae8b9d9c46004f4fdd8ce83ae19f732769f9a8a239f24c4`  
		Last Modified: Mon, 23 Nov 2026 21:32:34 GMT  
		Size: 9.4 MB (9351292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7954ed06162306c3b08e66c91df32f876a35bd16f1accca4e23355bdd91fbf6c`  
		Last Modified: Mon, 23 Nov 2026 21:32:34 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d69440090791310b7176eeaa77459bb25f10ccc14feb6121b0a97ce3686c707`  
		Last Modified: Mon, 23 Nov 2026 21:32:34 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto` - unknown; unknown

```console
$ docker pull maven@sha256:fb2040f473712125b9630720ee23a1cf996fd559fdcede59459b61c7e1529679
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6231909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdb89fdbbfb07c0eb69f203675ad224c64bfb83252612ae922bf15b0d1aaeb57`

```dockerfile
```

-	Layers:
	-	`sha256:4f12e075533242388a15aaf84fea9e2309e4eff2b3926f423d63f24b84042d19`  
		Last Modified: Mon, 23 Nov 2026 21:32:34 GMT  
		Size: 6.2 MB (6215117 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8ce54af847c94ffb74f92826a01a628bb0a3f599953c64ffc35f6e5761f6b1e0`  
		Last Modified: Mon, 23 Nov 2026 21:32:33 GMT  
		Size: 16.8 KB (16792 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:65771ff2618d925331e61b9bdd625a8e7405f10165798ad26c926176140f80e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **429.2 MB (429208274 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25d3f7cef362c9e1fdb7a4f834b4398fc2936fab1207c59a5b6003e96536ecef`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 18 Nov 2026 21:16:23 GMT
COPY /rootfs/ / # buildkit
# Wed, 18 Nov 2026 21:16:23 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 21:36:08 GMT
ARG version=27.0.1.1.4-1
# Wed, 18 Nov 2026 21:36:08 GMT
ARG resource_version=27.0.1.1.4
# Wed, 18 Nov 2026 21:36:08 GMT
ARG package_version=1
# Wed, 18 Nov 2026 21:36:08 GMT
# ARGS: version=27.0.1.1.4-1 resource_version=27.0.1.1.4 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-27-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-27-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 18 Nov 2026 21:36:08 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 21:36:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-amazon-corretto
# Fri, 20 Nov 2026 06:14:49 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Fri, 20 Nov 2026 06:14:49 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 20 Nov 2026 06:14:49 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 06:14:49 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 06:14:49 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 20 Nov 2026 06:14:49 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 20 Nov 2026 06:14:49 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 20 Nov 2026 06:14:49 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 06:14:49 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 20 Nov 2026 06:14:49 GMT
ARG USER_HOME_DIR=/root
# Fri, 20 Nov 2026 06:14:49 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 20 Nov 2026 06:14:49 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 20 Nov 2026 06:14:49 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:7dd5afb185e9abad9919aa0d5eaa430bb9babdb805532cdb871320227597f486`  
		Last Modified: Wed, 18 Nov 2026 01:44:00 GMT  
		Size: 53.5 MB (53453550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd727c09acb5163eea2abc1faf18df7ea914d85b0d89916d98f11b415896d297`  
		Last Modified: Wed, 18 Nov 2026 21:36:33 GMT  
		Size: 190.2 MB (190195174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28adcd6bf35dbdde11a4c839342cdc9d3e0455b3d07b50348bec639172268fd6`  
		Last Modified: Fri, 20 Nov 2026 06:15:13 GMT  
		Size: 175.5 MB (175499526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e624189a9d7a5f269dea08e444e5cba88ab343825aee7aa64be55ae4fdde45ec`  
		Last Modified: Fri, 20 Nov 2026 06:15:09 GMT  
		Size: 10.1 MB (10059018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce25bb563a3217166b5c75981c5f2db60ce31891d269c9658e7145555f5b19d3`  
		Last Modified: Fri, 20 Nov 2026 06:15:09 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b1f0c3be192d870bc9cd1640cda70a78d1018ae120b2e99b50a9a11b8796035`  
		Last Modified: Fri, 20 Nov 2026 06:15:09 GMT  
		Size: 157.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto` - unknown; unknown

```console
$ docker pull maven@sha256:e0bc4007a4681ba1e01b93604d0de94cda5a0fbd3ea4b5d7032f066c1ba00391
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6237456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1017a9fc1a17bdfb88f989fc54e466e07589473c127c5ab758369b56ff490522`

```dockerfile
```

-	Layers:
	-	`sha256:69953bffe5541d54578009b5e32d8b5d67c6f6deb0c326615fdf6427c8c95f30`  
		Last Modified: Fri, 20 Nov 2026 06:15:09 GMT  
		Size: 6.2 MB (6220442 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bf7cb67ccfc80d0042674712b5668e8939ba86d73d0dcd51b13cc8113f47881d`  
		Last Modified: Fri, 20 Nov 2026 06:15:09 GMT  
		Size: 17.0 KB (17014 bytes)  
		MIME: application/vnd.in-toto+json
