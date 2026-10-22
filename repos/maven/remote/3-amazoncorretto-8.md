## `maven:3-amazoncorretto-8`

```console
$ docker pull maven@sha256:1b5e7dda03492f79fce7741675044aa13d69b00bbdeb7e07fecff6907b5b74e5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-8` - linux; amd64

```console
$ docker pull maven@sha256:c2cf04bfca96356221655195de9e447b79d15e897bad093a26b4d4f6369415f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **346.6 MB (346574625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81fbafeb82fea6dae65d41f1ef536102bb31101698ab8353416b5f7197891181`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 21 Oct 2026 22:45:19 GMT
COPY /rootfs/ / # buildkit
# Wed, 21 Oct 2026 22:45:19 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 23:27:20 GMT
ARG version=1.8.0_504.b05-1
# Wed, 21 Oct 2026 23:27:20 GMT
# ARGS: version=1.8.0_504.b05-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 21 Oct 2026 23:27:20 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 23:27:20 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
# Thu, 22 Oct 2026 00:19:08 GMT
RUN yum install -y tar which gzip # TODO remove # buildkit
# Thu, 22 Oct 2026 00:19:10 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Thu, 22 Oct 2026 00:19:10 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 22 Oct 2026 00:19:10 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 22 Oct 2026 00:19:10 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 22 Oct 2026 00:19:10 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 22 Oct 2026 00:19:10 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 22 Oct 2026 00:19:10 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 22 Oct 2026 00:19:10 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 22 Oct 2026 00:19:10 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 22 Oct 2026 00:19:10 GMT
ARG USER_HOME_DIR=/root
# Thu, 22 Oct 2026 00:19:10 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 22 Oct 2026 00:19:10 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 22 Oct 2026 00:19:10 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:7234d0a9b6ba1270c7bb653ee62a443a1dbb6fdfa833336edd3c0691c2524d1f`  
		Last Modified: Thu, 01 Oct 2026 02:22:29 GMT  
		Size: 54.6 MB (54630770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5f31515f70ed6ef2d96016e3f75a99ce85d22aaa34faa9a95e71c4a135e76bb`  
		Last Modified: Wed, 21 Oct 2026 23:27:38 GMT  
		Size: 118.1 MB (118073752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a2619a1b6bfa6421c5bb8328f8c5112816bbbcb393e83ec4d1e3d8a2dce7601`  
		Last Modified: Thu, 22 Oct 2026 00:19:29 GMT  
		Size: 150.3 MB (150299729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0bfbbbbef0816381852e7c53cb415c4f7326bf88960c365303a8627a23365ce`  
		Last Modified: Thu, 22 Oct 2026 00:19:26 GMT  
		Size: 13.5 MB (13510345 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1c43ccb99521217ee48bf8faa5e43bef58c17d06472e44d6cc5a34139697721`  
		Last Modified: Thu, 22 Oct 2026 00:19:26 GMT  
		Size: 10.1 MB (10059019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68e1aedb4c884c4740809717bb98faecc67c29702b43d1f95246d6257107f8bf`  
		Last Modified: Thu, 22 Oct 2026 00:19:25 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27a8ca2f9cd2b6bb0419e313b4d39f5e92982bebd867ce7f707b1125a26cd2b5`  
		Last Modified: Thu, 22 Oct 2026 00:19:27 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-8` - unknown; unknown

```console
$ docker pull maven@sha256:4e1d08c9343a4fb380171baf625761fffea3c135468f6fbbf53b4f71fb0dd8e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6645647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:942b7e66cdb522dfce19b7d51891fa5c73ff3d81533895c263eda7acb2528e5f`

```dockerfile
```

-	Layers:
	-	`sha256:4f2acc0050c3c39c7320e21a71ca62d484aba2b2968aca81323c96644252cee3`  
		Last Modified: Thu, 22 Oct 2026 00:19:26 GMT  
		Size: 6.6 MB (6628355 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:659af45349f45aed25367578984403b876285848d05a08d3ddcccca0c586d74a`  
		Last Modified: Thu, 22 Oct 2026 00:19:25 GMT  
		Size: 17.3 KB (17292 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-8` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:28a37529ed0e9f2043ea2cce847615bb6e1c964016a42744f1971d6d56db8761
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.8 MB (343750128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f160e65945133a4ff2886b474fb589df25288afc8df22e4bafd376bcfcbb8b43`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 21 Oct 2026 23:11:39 GMT
COPY /rootfs/ / # buildkit
# Wed, 21 Oct 2026 23:11:39 GMT
CMD ["/bin/bash"]
# Thu, 22 Oct 2026 00:18:57 GMT
ARG version=1.8.0_504.b05-1
# Thu, 22 Oct 2026 00:18:57 GMT
# ARGS: version=1.8.0_504.b05-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 22 Oct 2026 00:18:57 GMT
ENV LANG=C.UTF-8
# Thu, 22 Oct 2026 00:18:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
# Thu, 22 Oct 2026 01:21:33 GMT
RUN yum install -y tar which gzip # TODO remove # buildkit
# Thu, 22 Oct 2026 01:21:35 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Thu, 22 Oct 2026 01:21:35 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 22 Oct 2026 01:21:35 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 22 Oct 2026 01:21:35 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 22 Oct 2026 01:21:35 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 22 Oct 2026 01:21:35 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 22 Oct 2026 01:21:35 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 22 Oct 2026 01:21:35 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 22 Oct 2026 01:21:35 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 22 Oct 2026 01:21:35 GMT
ARG USER_HOME_DIR=/root
# Thu, 22 Oct 2026 01:21:35 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 22 Oct 2026 01:21:35 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 22 Oct 2026 01:21:35 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:3009834f3cf8cead1d3dea9d3cbebc711c021c4aed04759be014247a0c3181e7`  
		Last Modified: Thu, 01 Oct 2026 02:22:31 GMT  
		Size: 53.5 MB (53504398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9131c5ec9525cf33f49567994d90fc824ee05a7a1adf959fef231c6301425ebe`  
		Last Modified: Thu, 22 Oct 2026 00:19:17 GMT  
		Size: 118.0 MB (117965954 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10e452b190146c981dc573197f36722fad456b2b569581569b5886a706db8133`  
		Last Modified: Thu, 22 Oct 2026 01:21:57 GMT  
		Size: 148.5 MB (148467735 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02cc644849e0ccfa3ede3e97d0ee13650606ddfc99a13d6923cfe76cf584d88c`  
		Last Modified: Thu, 22 Oct 2026 01:21:54 GMT  
		Size: 13.8 MB (13752016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adece3390f33405162c5bd34d37bd5fb712286ba35080eea02f2e914538ff76f`  
		Last Modified: Thu, 22 Oct 2026 01:21:54 GMT  
		Size: 10.1 MB (10059012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5698c1b19847dba398c55c54d55ee313a2bdc67f3f9cba67781947588497b7af`  
		Last Modified: Thu, 22 Oct 2026 01:21:53 GMT  
		Size: 854.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4b3596982bbc32c411dc367f7504e5b3e15554cec795ca679d2e3d8561c304a`  
		Last Modified: Thu, 22 Oct 2026 01:21:55 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-8` - unknown; unknown

```console
$ docker pull maven@sha256:8a05a248d715b5263beb56eef0ae80c49419862659f997e0659fd64c40c48e04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6646122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d8b25218e02b63d5fee96981011c48bc3c276e2cd637d5a1cadfab1d2f4c659`

```dockerfile
```

-	Layers:
	-	`sha256:c08c1857a2355145c9c2ad6878723e3bc30ae4737c68a411912386112d611262`  
		Last Modified: Thu, 22 Oct 2026 01:21:54 GMT  
		Size: 6.6 MB (6628645 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:af36b6ec90107de83effdebf80045dd84896da2894e444e7e49175cd8462b006`  
		Last Modified: Thu, 22 Oct 2026 01:21:53 GMT  
		Size: 17.5 KB (17477 bytes)  
		MIME: application/vnd.in-toto+json
