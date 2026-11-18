## `maven:3-amazoncorretto`

```console
$ docker pull maven@sha256:fcd57d7e67a63d23202827b9891c646ff9eb49cc9a8c3a96c00945dd4aecab8c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto` - linux; amd64

```console
$ docker pull maven@sha256:953d5b4cec686aff12e6bbb781b31cc9b28e2528f4011376091a88213c03e19c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **433.9 MB (433878226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d589e482c9f8c0f56f76eaa12056a3be14656a6189b42c0a26823eb7e1276e3d`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 18 Nov 2026 21:16:24 GMT
COPY /rootfs/ / # buildkit
# Wed, 18 Nov 2026 21:16:24 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 21:35:31 GMT
ARG version=27.0.1.1.4-1
# Wed, 18 Nov 2026 21:35:31 GMT
ARG resource_version=27.0.1.1.4
# Wed, 18 Nov 2026 21:35:31 GMT
ARG package_version=1
# Wed, 18 Nov 2026 21:35:31 GMT
# ARGS: version=27.0.1.1.4-1 resource_version=27.0.1.1.4 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-27-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-27-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 18 Nov 2026 21:35:31 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 21:35:31 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-amazon-corretto
# Wed, 18 Nov 2026 22:02:26 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Wed, 18 Nov 2026 22:02:26 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 18 Nov 2026 22:02:26 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 18 Nov 2026 22:02:26 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 18 Nov 2026 22:02:26 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 18 Nov 2026 22:02:26 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 18 Nov 2026 22:02:26 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 18 Nov 2026 22:02:26 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 18 Nov 2026 22:02:26 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 18 Nov 2026 22:02:26 GMT
ARG USER_HOME_DIR=/root
# Wed, 18 Nov 2026 22:02:26 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 18 Nov 2026 22:02:26 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 18 Nov 2026 22:02:26 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:48c7a3aa33f84b2fa7af701f558c0a97251fe0ca6790119c6f912decc8cad76d`  
		Last Modified: Tue, 17 Nov 2026 23:01:37 GMT  
		Size: 54.6 MB (54569091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ffe477a1ed07db3f14ac675f731cf24e4339b4284ad1ff715a785e4996bad0e`  
		Last Modified: Wed, 18 Nov 2026 21:35:54 GMT  
		Size: 192.0 MB (192028508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9518dd900ddbe245d9b94679be659dbcad47451e0ff0c1cd844a2217da261a2f`  
		Last Modified: Wed, 18 Nov 2026 22:02:47 GMT  
		Size: 177.2 MB (177220606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f51d36bdf61a2a6f8551675acfda3cdbcd9a54b6ed066c2fb02351eb2fbcae36`  
		Last Modified: Wed, 18 Nov 2026 22:02:42 GMT  
		Size: 10.1 MB (10059012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1d091618519913bb77d52cd08ce16b78b4867047b38b7edb5ef3cc93dbf933d`  
		Last Modified: Wed, 18 Nov 2026 22:02:41 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9741fafa7c5f7cd4c94b0072f7e8cadf6976351f5877575af9d792c688b61e8`  
		Last Modified: Wed, 18 Nov 2026 22:02:43 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto` - unknown; unknown

```console
$ docker pull maven@sha256:27779ce072e24a53b18adf0a8d6600f04ccbf1329a7baa0e7cb4a765aecd1d06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6238220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60594fefca4e61ad0b4d8a008b98cef111b3c77f3965e1c5e59ff965bb289afa`

```dockerfile
```

-	Layers:
	-	`sha256:f9dbcbe232e1384833863aeb1f0e2bfd66f4cbfc0d746c810c59e38c8f9cf51d`  
		Last Modified: Wed, 18 Nov 2026 22:02:44 GMT  
		Size: 6.2 MB (6221423 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:535b4e5e2a49a01d081d894c2139c2363fdb8451ffc1ebbd7deb89c44db4783f`  
		Last Modified: Wed, 18 Nov 2026 22:02:44 GMT  
		Size: 16.8 KB (16797 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:838ce25699e1d71e522d11cce7bd376b3980f85d7f88b530812fc36fc5f5d3ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **429.2 MB (429208053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dac3d346ca1f603743d1923a75a81c9d3178c31e68174bdb30f5971891de4af5`
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
# Wed, 18 Nov 2026 21:56:23 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Wed, 18 Nov 2026 21:56:23 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 18 Nov 2026 21:56:23 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 18 Nov 2026 21:56:23 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 18 Nov 2026 21:56:23 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 18 Nov 2026 21:56:23 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 18 Nov 2026 21:56:23 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 18 Nov 2026 21:56:23 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 18 Nov 2026 21:56:23 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 18 Nov 2026 21:56:23 GMT
ARG USER_HOME_DIR=/root
# Wed, 18 Nov 2026 21:56:23 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 18 Nov 2026 21:56:23 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 18 Nov 2026 21:56:23 GMT
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
	-	`sha256:97631ef811b21afbaad4b2d22c43883c36f832b45dd3fc9cb85fb3a94aa08604`  
		Last Modified: Wed, 18 Nov 2026 21:56:46 GMT  
		Size: 175.5 MB (175499305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5db47ede0d73755a3ab0dd09f0a1de5e6399c3b43ae4bd3a190b6cfacaf07869`  
		Last Modified: Wed, 18 Nov 2026 21:56:42 GMT  
		Size: 10.1 MB (10059019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ce4932e9c9bd10e6ba312e4e339078bba77177317a6cff04df87b36ca57ea2b`  
		Last Modified: Wed, 18 Nov 2026 21:56:42 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:921aa6ef5e358eea2b1366f739187ac006aaf57e04d06daf84858453479c28e3`  
		Last Modified: Wed, 18 Nov 2026 21:56:42 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto` - unknown; unknown

```console
$ docker pull maven@sha256:9f6899f5c3ed70ebff2bef7fd24d86f30acfe6e87d558de1396af47ea094cb79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6237456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d31df00596eb0dbaf7b817e49c2c999c6d61ef63d3d20394e0502e2868ef76af`

```dockerfile
```

-	Layers:
	-	`sha256:589684e4f8241d6a189300fce288a6afeb217b9e9dd386849598040329334106`  
		Last Modified: Wed, 18 Nov 2026 21:56:42 GMT  
		Size: 6.2 MB (6220442 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5eac3efdc9fb64fb42ca0a707fb4a834747032d64a1ac06eb1b7afbb0361fb31`  
		Last Modified: Wed, 18 Nov 2026 21:56:42 GMT  
		Size: 17.0 KB (17014 bytes)  
		MIME: application/vnd.in-toto+json
