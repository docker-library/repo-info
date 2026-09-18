## `maven:3-amazoncorretto-21`

```console
$ docker pull maven@sha256:378d7b2d07742a557989e3494e5d6bf31ed599ff9f0a0b2f490ceaac48c91370
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-21` - linux; amd64

```console
$ docker pull maven@sha256:bbd823ae2daf2478cd44a1b1fd051343e195fb7878c6b3219082a3e41758439a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **391.2 MB (391214807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72b03e2ffcd79f09d9e1f7cb9a254abd6a7d87ecb0ce062685ef6b7761bb0fbb`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 17 Sep 2026 21:13:04 GMT
COPY /rootfs/ / # buildkit
# Thu, 17 Sep 2026 21:13:04 GMT
CMD ["/bin/bash"]
# Thu, 17 Sep 2026 22:22:43 GMT
ARG version=21.0.12.9-1
# Thu, 17 Sep 2026 22:22:43 GMT
ARG package_version=1
# Thu, 17 Sep 2026 22:22:43 GMT
# ARGS: version=21.0.12.9-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 17 Sep 2026 22:22:43 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 22:22:43 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Thu, 17 Sep 2026 23:24:11 GMT
RUN yum install -y tar which gzip # TODO remove # buildkit
# Thu, 17 Sep 2026 23:24:13 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Thu, 17 Sep 2026 23:24:13 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 17 Sep 2026 23:24:13 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 17 Sep 2026 23:24:13 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 17 Sep 2026 23:24:13 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 17 Sep 2026 23:24:13 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 17 Sep 2026 23:24:13 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 17 Sep 2026 23:24:13 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 17 Sep 2026 23:24:13 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 17 Sep 2026 23:24:13 GMT
ARG USER_HOME_DIR=/root
# Thu, 17 Sep 2026 23:24:13 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 17 Sep 2026 23:24:13 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 17 Sep 2026 23:24:13 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:0f0cc63a5845e28f771c9fceda4decc68b806470b009dae4085b441df0329b69`  
		Last Modified: Mon, 31 Aug 2026 23:14:18 GMT  
		Size: 54.6 MB (54586282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88c3afdc4eda7856dc6ecfd297cc96f1039477171bba7a7a4a25acbe38a4d74a`  
		Last Modified: Thu, 17 Sep 2026 22:23:05 GMT  
		Size: 170.4 MB (170436407 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cee5b908744b15a50ff74b033225993bd844efd028466ce40a191e40e2887f4e`  
		Last Modified: Thu, 17 Sep 2026 23:24:33 GMT  
		Size: 143.3 MB (143306327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8499f8bfee7f2aa90645a5ed89e0e941f24e6f73680984b269f2cc7de8c6e347`  
		Last Modified: Thu, 17 Sep 2026 23:24:30 GMT  
		Size: 13.5 MB (13524804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acab4e558434f42a075a0dd4b800a119056f8669cad3c02febf551d84138fe79`  
		Last Modified: Thu, 17 Sep 2026 23:24:30 GMT  
		Size: 9.4 MB (9359977 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec6313da42170b0156c819ab966a58c8b1728fbfeacce2be5f13d01662022ab2`  
		Last Modified: Thu, 17 Sep 2026 23:24:29 GMT  
		Size: 852.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07a7c6fe33dbc1d7f0a9500bd7cde8df7f4a90bedbeba96a5a247a4c064ab8c8`  
		Last Modified: Thu, 17 Sep 2026 23:24:29 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-21` - unknown; unknown

```console
$ docker pull maven@sha256:5269b1784889dd8a0b7fd086c1ae6f4b1ee7b09e90569dfb9d60c9b047662134
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6266589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0295d6ac748eac4ca2306a7decb9103d56f3d93163ddcabe54f194f81c31b6f`

```dockerfile
```

-	Layers:
	-	`sha256:54607ee9777cd57b29e6abe07e2d06f3b5f2903988d28dbb0d52d6e804931d2f`  
		Last Modified: Thu, 17 Sep 2026 23:24:29 GMT  
		Size: 6.2 MB (6249295 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6b53ba1cfa9e583416eec00ceeeab800d6009baca36abb691d01d061debd3df1`  
		Last Modified: Thu, 17 Sep 2026 23:24:29 GMT  
		Size: 17.3 KB (17294 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-21` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:f3ce08a39b0cc337f932f8806175a00af8f707f53244431b7b1a917b4dbc11d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **386.9 MB (386915771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:480359aa9f52b86edb739829c243986ada9dc424bc81cb748694179bd6751157`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 17 Sep 2026 21:12:44 GMT
COPY /rootfs/ / # buildkit
# Thu, 17 Sep 2026 21:12:44 GMT
CMD ["/bin/bash"]
# Thu, 17 Sep 2026 22:46:57 GMT
ARG version=21.0.12.9-1
# Thu, 17 Sep 2026 22:46:57 GMT
ARG package_version=1
# Thu, 17 Sep 2026 22:46:57 GMT
# ARGS: version=21.0.12.9-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 17 Sep 2026 22:46:57 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 22:46:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Thu, 17 Sep 2026 23:27:08 GMT
RUN yum install -y tar which gzip # TODO remove # buildkit
# Thu, 17 Sep 2026 23:27:10 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Thu, 17 Sep 2026 23:27:10 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 17 Sep 2026 23:27:10 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 17 Sep 2026 23:27:10 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 17 Sep 2026 23:27:10 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 17 Sep 2026 23:27:10 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 17 Sep 2026 23:27:10 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 17 Sep 2026 23:27:10 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 17 Sep 2026 23:27:10 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 17 Sep 2026 23:27:10 GMT
ARG USER_HOME_DIR=/root
# Thu, 17 Sep 2026 23:27:10 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 17 Sep 2026 23:27:10 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 17 Sep 2026 23:27:10 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:6b98cf5afd5c5e1a58de351abf0b1ec3a4a61b63fd5a86c62edc6367d59ac249`  
		Last Modified: Mon, 31 Aug 2026 23:14:33 GMT  
		Size: 53.5 MB (53452573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c1368bd2c0308c8749e0e929bfb7617366275d180131c4480d5ae82ab72fdb6`  
		Last Modified: Thu, 17 Sep 2026 22:47:21 GMT  
		Size: 168.7 MB (168685849 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf2c7b7ac7c9072ae1ed9aa7836d3ed0e20ef9e453310615832730fc655b8354`  
		Last Modified: Thu, 17 Sep 2026 23:27:30 GMT  
		Size: 141.6 MB (141646045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96d257eb8cee904067f109889dad18b0f7d444dfad67a044853dfcace9e256f7`  
		Last Modified: Thu, 17 Sep 2026 23:27:27 GMT  
		Size: 13.8 MB (13770308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cec3ae7da94fdf579e027115ae9e616007e3a4fc3bafa3f9b2151a23d7cac1d`  
		Last Modified: Thu, 17 Sep 2026 23:27:27 GMT  
		Size: 9.4 MB (9359983 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb46c0475a8d790d4c03bf878597975f2ed8c878b4008910d81a16b194fac706`  
		Last Modified: Thu, 17 Sep 2026 23:27:27 GMT  
		Size: 853.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5097f5c5aa5abe40291a008970e6c0073a25ba191a762728b1f0daed4d573123`  
		Last Modified: Thu, 17 Sep 2026 23:27:28 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-21` - unknown; unknown

```console
$ docker pull maven@sha256:6d0782b256611898ba16f0bb0a613b18c88e23bad338e4cfff4c1be90d51e12b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6265744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aadfa85d1b9ba9df9a5f97a5ed31d61e734464ed109be55638be53fa44321430`

```dockerfile
```

-	Layers:
	-	`sha256:12dd78e5aec1b9110a395d79afb2a3b51f5feaafba31035c231b24be11854963`  
		Last Modified: Thu, 17 Sep 2026 23:27:27 GMT  
		Size: 6.2 MB (6248265 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a66ff526639febc387c5e807d821263441df2f1d712fbd319720e05047d6ebc4`  
		Last Modified: Thu, 17 Sep 2026 23:27:26 GMT  
		Size: 17.5 KB (17479 bytes)  
		MIME: application/vnd.in-toto+json
