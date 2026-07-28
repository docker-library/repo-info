## `maven:3-amazoncorretto-8`

```console
$ docker pull maven@sha256:ed386133ac3b047fc9f9ec7b01f57bfe10c27719613cf26c5fb9359f9d6a7083
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-8` - linux; amd64

```console
$ docker pull maven@sha256:2fc9d581138f2eef31bd24542bc49de47c587b10f98280f693f971897d8e619d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **329.3 MB (329253359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54fe52d6879159adadbe9852aa62a9973b32e581f54ef072fadd3bfe9f2a6663`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 27 Jul 2026 21:19:13 GMT
COPY /rootfs/ / # buildkit
# Mon, 27 Jul 2026 21:19:13 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 21:35:34 GMT
ARG version=1.8.0_502.b07-1
# Mon, 27 Jul 2026 21:35:34 GMT
# ARGS: version=1.8.0_502.b07-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 27 Jul 2026 21:35:34 GMT
ENV LANG=C.UTF-8
# Mon, 27 Jul 2026 21:35:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
# Mon, 27 Jul 2026 22:05:39 GMT
RUN yum install -y tar which gzip # TODO remove # buildkit
# Mon, 27 Jul 2026 22:05:41 GMT
RUN yum install -y openssh-clients # buildkit
# Mon, 27 Jul 2026 22:05:41 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Mon, 27 Jul 2026 22:05:41 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Mon, 27 Jul 2026 22:05:41 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Mon, 27 Jul 2026 22:05:41 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Mon, 27 Jul 2026 22:05:41 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 27 Jul 2026 22:05:41 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Mon, 27 Jul 2026 22:05:41 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Mon, 27 Jul 2026 22:05:41 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Mon, 27 Jul 2026 22:05:41 GMT
ARG USER_HOME_DIR=/root
# Mon, 27 Jul 2026 22:05:41 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 27 Jul 2026 22:05:41 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 27 Jul 2026 22:05:41 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:5492e2c54dedbfa8cbd57605d23f9468dae3f869273566ed212185e48340d5d5`  
		Last Modified: Fri, 24 Jul 2026 21:00:37 GMT  
		Size: 54.6 MB (54572684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e34f0458b32a0e7be86d2d43807bdd99d0ab8315ea76059ed56267a9165ea983`  
		Last Modified: Mon, 27 Jul 2026 21:35:53 GMT  
		Size: 118.1 MB (118076125 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db5596c882f4b7476d4cc5e1852d0bbebf9c9d31c989f8414b36f07226f40149`  
		Last Modified: Mon, 27 Jul 2026 22:06:00 GMT  
		Size: 134.7 MB (134747362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6ad7465381284ba76381d7dd9aaaa854efeaf63b54078802f78930eca046d3d`  
		Last Modified: Mon, 27 Jul 2026 22:05:57 GMT  
		Size: 12.5 MB (12496203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d88cb76b69e177bde92ccea72d791fb63d455f84f4bdfef121938c2bee98fde5`  
		Last Modified: Mon, 27 Jul 2026 22:05:57 GMT  
		Size: 9.4 MB (9359975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba96780f3f873fb98167fa9d65111cdcd7045a4f7c0bd6f03bb5cc72495e4492`  
		Last Modified: Mon, 27 Jul 2026 22:05:57 GMT  
		Size: 853.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba4979c47630b57b54a8ed0742fb547bf32f0763d06a0eb92a05f25e82d8bfe3`  
		Last Modified: Mon, 27 Jul 2026 22:05:56 GMT  
		Size: 157.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-8` - unknown; unknown

```console
$ docker pull maven@sha256:c7c60feca63d54ddfe0aa02afd11db1bcbfa792ced79d3ab1c4af389943c29f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6604475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2b83565e5de712fe64b414de6ee459bfac5dc143706cff471a0d5bf023e4421`

```dockerfile
```

-	Layers:
	-	`sha256:86d32ccf908de39581e2351315f4785cb8da42b365785006613815dc27cc9ded`  
		Last Modified: Mon, 27 Jul 2026 22:05:57 GMT  
		Size: 6.6 MB (6588283 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b58216a462d2de17f36b6c69cd38a0887ab8ac9fb2378d7d0651bb58404baf86`  
		Last Modified: Mon, 27 Jul 2026 22:05:56 GMT  
		Size: 16.2 KB (16192 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-8` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:31cf41c71e91a728e985a992dc84578207f02c28a54bc3e9a08db3c5030d04cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **326.7 MB (326650344 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2e7363059c3626e5ad476ca04bc029010c7fd7bf1a07ea25ba7aea2bb9e422f`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 27 Jul 2026 21:19:12 GMT
COPY /rootfs/ / # buildkit
# Mon, 27 Jul 2026 21:19:12 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 21:35:11 GMT
ARG version=1.8.0_502.b07-1
# Mon, 27 Jul 2026 21:35:11 GMT
# ARGS: version=1.8.0_502.b07-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 27 Jul 2026 21:35:11 GMT
ENV LANG=C.UTF-8
# Mon, 27 Jul 2026 21:35:11 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
# Mon, 27 Jul 2026 22:05:29 GMT
RUN yum install -y tar which gzip # TODO remove # buildkit
# Mon, 27 Jul 2026 22:05:31 GMT
RUN yum install -y openssh-clients # buildkit
# Mon, 27 Jul 2026 22:05:31 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Mon, 27 Jul 2026 22:05:31 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Mon, 27 Jul 2026 22:05:31 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Mon, 27 Jul 2026 22:05:31 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Mon, 27 Jul 2026 22:05:31 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 27 Jul 2026 22:05:31 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Mon, 27 Jul 2026 22:05:31 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Mon, 27 Jul 2026 22:05:31 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Mon, 27 Jul 2026 22:05:31 GMT
ARG USER_HOME_DIR=/root
# Mon, 27 Jul 2026 22:05:31 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 27 Jul 2026 22:05:31 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 27 Jul 2026 22:05:31 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:07006faf6af6164a3570dfc90b2fce3d8038766e9e8572e8cc38b3a1eb8bbdd7`  
		Last Modified: Fri, 24 Jul 2026 21:55:34 GMT  
		Size: 53.4 MB (53449611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a751c274860331fcd022c968b38d60fa8d18146ef1eff3108884f678c36690c6`  
		Last Modified: Mon, 27 Jul 2026 21:35:30 GMT  
		Size: 118.0 MB (117964902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f73bb534bb36ea21bff269bfac079d2ad353d50da183e09c8eb06acda1a39a0e`  
		Last Modified: Mon, 27 Jul 2026 22:05:52 GMT  
		Size: 133.1 MB (133122181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bec2ecc28b35672fa8c06aa3662a4bcc11d3521909285e55e751cc1952c64e47`  
		Last Modified: Mon, 27 Jul 2026 22:05:49 GMT  
		Size: 12.8 MB (12752666 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:502255dd32bbf6537be0d162408ef582551c292440d7a6abcabaa0fcef270212`  
		Last Modified: Mon, 27 Jul 2026 22:05:49 GMT  
		Size: 9.4 MB (9359974 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb7582caf6e9926a56a766ff8bd929236e811678af830ffc0f1f6e6a16892cee`  
		Last Modified: Mon, 27 Jul 2026 22:05:49 GMT  
		Size: 852.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e191553789717ede4a73c5cff361acbcdecdf3cc75cc31080a8ca6be79b6f55c`  
		Last Modified: Mon, 27 Jul 2026 22:05:50 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-8` - unknown; unknown

```console
$ docker pull maven@sha256:2cfd89fa6911ca07c76c2b394ff1a62dca0fa956b743bd70f3cccc43b2a1986b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6604875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ee6e6ec026592a982c62b72ef02844032b92c1bd7c3a2e7f5d53d11c22fe0c4`

```dockerfile
```

-	Layers:
	-	`sha256:58e2f7b6977b5419fb1b9cf499e3000458201591f0356606f6fa44066f802b4a`  
		Last Modified: Mon, 27 Jul 2026 22:05:49 GMT  
		Size: 6.6 MB (6588537 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2703715f215d7802e9ba0ffe1d79c693e4e2c5df0e0bf45bac3f7803a94673b6`  
		Last Modified: Mon, 27 Jul 2026 22:05:48 GMT  
		Size: 16.3 KB (16338 bytes)  
		MIME: application/vnd.in-toto+json
