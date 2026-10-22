## `maven:3-amazoncorretto-8`

```console
$ docker pull maven@sha256:e205fc1bdca3c33feecd9f11593a740d3e828b30984949bd6d8a2ac50cbcdbc5
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
$ docker pull maven@sha256:796fda88ced2b4284b8b187f229ed6de377ddcb28239b97258736d0f7b31b253
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.7 MB (343749718 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae66ab7523a8f1a8489366e6989ee6596a0c5d44a66cb8aeea9ed874f1fd581e`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 05 Oct 2026 18:28:31 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:28:31 GMT
CMD ["/bin/bash"]
# Wed, 14 Oct 2026 17:07:16 GMT
ARG version=1.8.0_504.b05-1
# Wed, 14 Oct 2026 17:07:16 GMT
# ARGS: version=1.8.0_504.b05-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 14 Oct 2026 17:07:16 GMT
ENV LANG=C.UTF-8
# Wed, 14 Oct 2026 17:07:16 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
# Sat, 17 Oct 2026 03:19:12 GMT
RUN yum install -y tar which gzip # TODO remove # buildkit
# Sat, 17 Oct 2026 03:19:14 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Sat, 17 Oct 2026 03:19:14 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Sat, 17 Oct 2026 03:19:14 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Sat, 17 Oct 2026 03:19:14 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Sat, 17 Oct 2026 03:19:14 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Sat, 17 Oct 2026 03:19:14 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 17 Oct 2026 03:19:14 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Sat, 17 Oct 2026 03:19:14 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Sat, 17 Oct 2026 03:19:15 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Sat, 17 Oct 2026 03:19:15 GMT
ARG USER_HOME_DIR=/root
# Sat, 17 Oct 2026 03:19:15 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 17 Oct 2026 03:19:15 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 17 Oct 2026 03:19:15 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:3009834f3cf8cead1d3dea9d3cbebc711c021c4aed04759be014247a0c3181e7`  
		Last Modified: Thu, 01 Oct 2026 02:22:31 GMT  
		Size: 53.5 MB (53504398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6244fb77d895cebd86109e3322ab13787e12e715f6ab2888ae088568192e469f`  
		Last Modified: Wed, 14 Oct 2026 17:07:35 GMT  
		Size: 118.0 MB (117965841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4a996619b73a108bd47b0ff3d234ea7c069258ee5a323e8ae0e55c5f18fca4f`  
		Last Modified: Sat, 17 Oct 2026 03:19:36 GMT  
		Size: 148.5 MB (148467424 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:191d7c9ac6da9e5c9456293b143f00d082bb78fdd073ad06c9259d7d74d4ffb0`  
		Last Modified: Sat, 17 Oct 2026 03:19:33 GMT  
		Size: 13.8 MB (13752031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:893dd943749c1bb9674ec7f13619cd62d2e84002cb9734758c469b64ac78db43`  
		Last Modified: Sat, 17 Oct 2026 03:19:32 GMT  
		Size: 10.1 MB (10059015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff89aad5ce450ed9ec23648a9986b7fb8ce32eafa1677cc9b91fc304080ddb07`  
		Last Modified: Sat, 17 Oct 2026 03:19:32 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0318204ae166d526dad9457f1b1a0389c4bc43568995ab7f09e1e82285c7b94a`  
		Last Modified: Sat, 17 Oct 2026 03:19:33 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-8` - unknown; unknown

```console
$ docker pull maven@sha256:d04c5145d2100571d1c224fdbad2bf27a7aa70dd4e6a151e7b2924c69736789d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6646122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fee4fe91f1b851c42ccefc89b41261f57cbb9432354b791196df9bcba46882ff`

```dockerfile
```

-	Layers:
	-	`sha256:9fbcb49cbf11b1925197ba7ea50303b59692ddba18e0f39dfe531b464e48394d`  
		Last Modified: Sat, 17 Oct 2026 03:19:32 GMT  
		Size: 6.6 MB (6628645 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8656ac99049b2cf17a88d5f1ecf0725bd22e344b39b7b0673594152029a01fc4`  
		Last Modified: Sat, 17 Oct 2026 03:19:32 GMT  
		Size: 17.5 KB (17477 bytes)  
		MIME: application/vnd.in-toto+json
