## `maven:3-amazoncorretto-21-al2023`

```console
$ docker pull maven@sha256:9b051facf7f8a6378917c8b4d92396dd48122c2383d64c2979958bafe96bae8a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-21-al2023` - linux; amd64

```console
$ docker pull maven@sha256:b85426a280601d825d71f242d983b0219f6b41aea350ed0fee0c62f98ed558e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **388.3 MB (388262768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af8d140ee712e179a0c1a1d216a20c38637bb765e3c93cdf2ecbb7786f293e79`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 20 Aug 2026 16:55:33 GMT
COPY /rootfs/ / # buildkit
# Thu, 20 Aug 2026 16:55:33 GMT
CMD ["/bin/bash"]
# Thu, 20 Aug 2026 17:20:53 GMT
ARG version=21.0.12.9-1
# Thu, 20 Aug 2026 17:20:53 GMT
ARG package_version=1
# Thu, 20 Aug 2026 17:20:53 GMT
# ARGS: version=21.0.12.9-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 20 Aug 2026 17:20:53 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:20:53 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Wed, 09 Sep 2026 04:42:14 GMT
RUN yum install -y tar which gzip # TODO remove # buildkit
# Wed, 09 Sep 2026 04:42:16 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Wed, 09 Sep 2026 04:42:16 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 09 Sep 2026 04:42:16 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 09 Sep 2026 04:42:16 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 09 Sep 2026 04:42:16 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 09 Sep 2026 04:42:16 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 09 Sep 2026 04:42:16 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 09 Sep 2026 04:42:16 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 09 Sep 2026 04:42:16 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 09 Sep 2026 04:42:16 GMT
ARG USER_HOME_DIR=/root
# Wed, 09 Sep 2026 04:42:16 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 09 Sep 2026 04:42:16 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 09 Sep 2026 04:42:16 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:f206cad061713321049e1fe0c85223e018266fd8bccebf3156ef94c125bbd2e0`  
		Last Modified: Mon, 17 Aug 2026 23:42:26 GMT  
		Size: 54.6 MB (54583847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7443020b403141e1f17fca248791abf7bce88cad1fbf13bf52b35819044cb757`  
		Last Modified: Thu, 20 Aug 2026 17:21:14 GMT  
		Size: 170.4 MB (170436187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fe14b7e1053db86985066a1a88330079cfe0a8cbb9d03ae0eba29eaee6d10d7`  
		Last Modified: Wed, 09 Sep 2026 04:42:37 GMT  
		Size: 140.4 MB (140357717 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f65615408c070f70e11610a7196850d5d0d4b12d1d0c91b7236edc525999069`  
		Last Modified: Wed, 09 Sep 2026 04:42:34 GMT  
		Size: 13.5 MB (13524054 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3aca1e40df5041f6b795e912044b6df5cd8162ace2b967b8cb976ac1bb5431b`  
		Last Modified: Wed, 09 Sep 2026 04:42:34 GMT  
		Size: 9.4 MB (9359957 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abebc44904c70eef90abd6047a631723e243369b4c57e0126f9829361140b627`  
		Last Modified: Wed, 09 Sep 2026 04:42:33 GMT  
		Size: 848.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e57d3905e702dffa88084cce487a810e13a1eacee254cb2c64f296b535a21d10`  
		Last Modified: Wed, 09 Sep 2026 04:42:35 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-21-al2023` - unknown; unknown

```console
$ docker pull maven@sha256:aa598f105b35bb2c1d64ae94520a2ac90c8033b1ccb5ee37c6b8d468d0aa9623
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6266589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77fb3b38beabe1b178af0b8fc8a7a283081f81b2b7e76172cd2e508e46287533`

```dockerfile
```

-	Layers:
	-	`sha256:1131edcccb2844418c4b59c18e9e975ca6c8d15af7f21b7dddeca232bed659d2`  
		Last Modified: Wed, 09 Sep 2026 04:42:34 GMT  
		Size: 6.2 MB (6249295 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:622113dd961884f7c6ac580c2c00f6a1c69251ee23f25bb05dd0a68c73112ec3`  
		Last Modified: Wed, 09 Sep 2026 04:42:33 GMT  
		Size: 17.3 KB (17294 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-21-al2023` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:3e2cd85b555708278a21be97eb302e103df72e31b712ae85be55942b7a10579e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **383.9 MB (383897791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77da0251f3fb0f3953d8ad4defbc4ad6afcf4fc5e1dc501c55a34e4d560aa39d`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 20 Aug 2026 16:55:33 GMT
COPY /rootfs/ / # buildkit
# Thu, 20 Aug 2026 16:55:33 GMT
CMD ["/bin/bash"]
# Thu, 20 Aug 2026 17:17:58 GMT
ARG version=21.0.12.9-1
# Thu, 20 Aug 2026 17:17:58 GMT
ARG package_version=1
# Thu, 20 Aug 2026 17:17:58 GMT
# ARGS: version=21.0.12.9-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 20 Aug 2026 17:17:58 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:17:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Wed, 09 Sep 2026 04:27:18 GMT
RUN yum install -y tar which gzip # TODO remove # buildkit
# Wed, 09 Sep 2026 04:27:20 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Wed, 09 Sep 2026 04:27:20 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 09 Sep 2026 04:27:20 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 09 Sep 2026 04:27:20 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 09 Sep 2026 04:27:20 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 09 Sep 2026 04:27:20 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 09 Sep 2026 04:27:20 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 09 Sep 2026 04:27:20 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 09 Sep 2026 04:27:20 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 09 Sep 2026 04:27:20 GMT
ARG USER_HOME_DIR=/root
# Wed, 09 Sep 2026 04:27:20 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 09 Sep 2026 04:27:20 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 09 Sep 2026 04:27:20 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:108a276670f119053938f97626b5d9916306b34861b9c0cdd8d64a50bf504ad8`  
		Last Modified: Mon, 17 Aug 2026 23:42:41 GMT  
		Size: 53.5 MB (53450887 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a82bf7ad78016387234a023b428081248669526a23fc20057cf2e4b0c105b6f`  
		Last Modified: Thu, 20 Aug 2026 17:18:21 GMT  
		Size: 168.7 MB (168685777 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e7dcb2ffeff23b4f294d1dcb556ced2e7a3c0253570ad974bc5d404b7db4ebf`  
		Last Modified: Wed, 09 Sep 2026 04:27:41 GMT  
		Size: 138.6 MB (138631419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2848eaba3d539c7b3f98a9dfec12dce209f6e15f78c5029285c417dd63e3871`  
		Last Modified: Wed, 09 Sep 2026 04:27:39 GMT  
		Size: 13.8 MB (13768721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:237a927a14608564d6337e0aca5ca14bd22ab179dfe0dd68b43aba660537a273`  
		Last Modified: Wed, 09 Sep 2026 04:27:39 GMT  
		Size: 9.4 MB (9359979 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:919d94c6828b75f0b2ceb2a3cb1468da9125cb2c3517492f407f25c277f89471`  
		Last Modified: Wed, 09 Sep 2026 04:27:38 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c607e60bf08ad03f6eadb706999bc8741018735e743f70be7ec1468f8d552cf5`  
		Last Modified: Wed, 09 Sep 2026 04:27:39 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-21-al2023` - unknown; unknown

```console
$ docker pull maven@sha256:50f8469c9482d2fd252b79acf881cf5d9ea088f4f997c100072f01f7eddb3c04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6265744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6debdcf7ad67a8ea16e021290dc3618ca015a7ced8e9bf0c24168c785f52a38`

```dockerfile
```

-	Layers:
	-	`sha256:10847dd9d8433189bde686af49f38d3647eaaf56eaecd02cd7fce79fb687192a`  
		Last Modified: Wed, 09 Sep 2026 04:27:38 GMT  
		Size: 6.2 MB (6248265 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9c6a903925bcb5850598f3eb747b05bf874e7ab59327afc78780b50c1e7aeb3e`  
		Last Modified: Wed, 09 Sep 2026 04:27:38 GMT  
		Size: 17.5 KB (17479 bytes)  
		MIME: application/vnd.in-toto+json
