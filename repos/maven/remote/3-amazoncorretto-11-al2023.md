## `maven:3-amazoncorretto-11-al2023`

```console
$ docker pull maven@sha256:1277c04afd638322babb3e70801241ec51fa7fad762a9602664e74897b831d90
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-11-al2023` - linux; amd64

```console
$ docker pull maven@sha256:90dc3b1c9b1e994390816ea79fe80be19f9038c197da333eae00efe125367a3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **396.8 MB (396826478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7ae66dd469547e28ddc4b414d09c6aa8b7a37053fd42a996fe206278d9fe8a9`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 16 Nov 2026 22:28:06 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 22:28:06 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 02:46:33 GMT
ARG version=11.0.33.1.1-1
# Wed, 18 Nov 2026 02:46:33 GMT
ARG resource_version=11.0.33.1.1
# Wed, 18 Nov 2026 02:46:33 GMT
# ARGS: version=11.0.33.1.1-1 resource_version=11.0.33.1.1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-jmods-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 18 Nov 2026 02:46:33 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:46:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
# Wed, 18 Nov 2026 03:11:03 GMT
RUN yum install -y tar which gzip # TODO remove # buildkit
# Wed, 18 Nov 2026 03:11:04 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Wed, 18 Nov 2026 03:11:04 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 18 Nov 2026 03:11:04 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 18 Nov 2026 03:11:04 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 18 Nov 2026 03:11:04 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 18 Nov 2026 03:11:04 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 18 Nov 2026 03:11:04 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 18 Nov 2026 03:11:04 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 18 Nov 2026 03:11:05 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 18 Nov 2026 03:11:05 GMT
ARG USER_HOME_DIR=/root
# Wed, 18 Nov 2026 03:11:05 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 18 Nov 2026 03:11:05 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 18 Nov 2026 03:11:05 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:b14c48cb507df242c2b2a0cb744a00c9498a8511d265f31337cb732917717949`  
		Last Modified: Thu, 12 Nov 2026 22:05:23 GMT  
		Size: 54.6 MB (54569293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13467061847d3ed0608aae079c3639f759d01f0d529803916cff2096521249aa`  
		Last Modified: Wed, 18 Nov 2026 02:46:56 GMT  
		Size: 153.5 MB (153546315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9df11410e3ee0265dde1b848b4c79b104b7547ba7336f6de6a244d17ea4f1a44`  
		Last Modified: Wed, 18 Nov 2026 03:11:26 GMT  
		Size: 165.1 MB (165121636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4adf02e0915f8aed012b6054e95c4897408718cf2895a64144d20cff88331a41`  
		Last Modified: Wed, 18 Nov 2026 03:11:23 GMT  
		Size: 13.5 MB (13529216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3225a35bdf4810f0b7538b9b17bfa1e4fdfc763ad83c6a5bfd783aaaadde74b`  
		Last Modified: Wed, 18 Nov 2026 03:11:23 GMT  
		Size: 10.1 MB (10059008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17e99f94b483c584b18e6bd885906c62187c4a09cff89b6bdac04759584fde39`  
		Last Modified: Wed, 18 Nov 2026 03:11:22 GMT  
		Size: 852.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a4e17b015472800d86b807b5a7af2cf2ca7cc8a98029d7e36687eaf24f21697`  
		Last Modified: Wed, 18 Nov 2026 03:11:23 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-11-al2023` - unknown; unknown

```console
$ docker pull maven@sha256:8b2bc64a44d7475c557edb4b1a4dd15c4772ce7c947bee79599afa788e65e99e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6294596 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ff282dd7889c892031355a1bc2e51afd7ab4e4def0457ab7b8991bee1c2aba3`

```dockerfile
```

-	Layers:
	-	`sha256:fa94cdf2e969d3132b459dbd8d5f6c5a61cdc336759cb7353907d8d71816967e`  
		Last Modified: Wed, 18 Nov 2026 03:11:22 GMT  
		Size: 6.3 MB (6277293 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c713989307a4c20b0062561c4c0667e3f68ab1c1b514559e5a1e7abb3917443a`  
		Last Modified: Wed, 18 Nov 2026 03:11:22 GMT  
		Size: 17.3 KB (17303 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-11-al2023` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:dc62ca5f65a77df330889f80de470f9f1902d428b0330c7b9f0f5322aa2cbf30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **392.4 MB (392388774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:267e4de945adab992d54a68eab0ee9d5723c5e6a3b22f0671541e949f8fc8d47`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 16 Nov 2026 22:29:21 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 22:29:21 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 02:46:46 GMT
ARG version=11.0.33.1.1-1
# Wed, 18 Nov 2026 02:46:46 GMT
ARG resource_version=11.0.33.1.1
# Wed, 18 Nov 2026 02:46:46 GMT
# ARGS: version=11.0.33.1.1-1 resource_version=11.0.33.1.1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-jmods-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 18 Nov 2026 02:46:46 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:46:46 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
# Wed, 18 Nov 2026 03:11:01 GMT
RUN yum install -y tar which gzip # TODO remove # buildkit
# Wed, 18 Nov 2026 03:11:03 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Wed, 18 Nov 2026 03:11:03 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 18 Nov 2026 03:11:03 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 18 Nov 2026 03:11:03 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 18 Nov 2026 03:11:03 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 18 Nov 2026 03:11:03 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 18 Nov 2026 03:11:03 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 18 Nov 2026 03:11:03 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 18 Nov 2026 03:11:03 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 18 Nov 2026 03:11:03 GMT
ARG USER_HOME_DIR=/root
# Wed, 18 Nov 2026 03:11:03 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 18 Nov 2026 03:11:03 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 18 Nov 2026 03:11:03 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:ec15fd39d3176482c0c3086a0be29d9028611fd79d15bccd7da39e67bbfceeab`  
		Last Modified: Thu, 12 Nov 2026 22:05:26 GMT  
		Size: 53.5 MB (53453077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61a4698081732701b3aa78c9a4a61f1acd296eaa0940028fb566d62dfc366e84`  
		Last Modified: Wed, 18 Nov 2026 02:47:07 GMT  
		Size: 152.1 MB (152136038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e9ea79741784cd96e3b617b0201514e8f0aff9492b1d055d6e0c2ea70bd4710`  
		Last Modified: Wed, 18 Nov 2026 03:11:26 GMT  
		Size: 163.0 MB (162967072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5919ace8f0667d2325e6a218f1a4576185369899865aedb053da3532df47abdd`  
		Last Modified: Wed, 18 Nov 2026 03:11:23 GMT  
		Size: 13.8 MB (13772567 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a85b45e42de188e3390bc93411f055019aed3a0fccd485f9c17de5dff88c6949`  
		Last Modified: Wed, 18 Nov 2026 03:11:23 GMT  
		Size: 10.1 MB (10059012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81edd40f5db745e8ddfdfa80b169716cc43d540cee91432777c19a326d8e2f3c`  
		Last Modified: Wed, 18 Nov 2026 03:11:22 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a880ae33819aa898671fd3c8ed8f4f1beb3173e6f051132dace452fe0313d01`  
		Last Modified: Wed, 18 Nov 2026 03:11:24 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-11-al2023` - unknown; unknown

```console
$ docker pull maven@sha256:0254b97656b41cd2b41954a27b1363966eac5802a5aa4f2fac978e9b3cecc171
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6294590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cafe1dd0b1a40b1aca694c3db8202a8528504b49e524f0ff2b145661eb1ee68`

```dockerfile
```

-	Layers:
	-	`sha256:a78ccfa6ac90c3c9abf4b369f784f59e734cf014d3966cffe47d5feab309f2f0`  
		Last Modified: Wed, 18 Nov 2026 03:11:23 GMT  
		Size: 6.3 MB (6277103 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:694150740f8d67ba259fcd497c99893d8f5b8e4450a4602554affdc145278a0d`  
		Last Modified: Wed, 18 Nov 2026 03:11:22 GMT  
		Size: 17.5 KB (17487 bytes)  
		MIME: application/vnd.in-toto+json
