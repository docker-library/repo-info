## `maven:3-amazoncorretto-11-al2023`

```console
$ docker pull maven@sha256:7c6daa0da84012c89b85bc1b3ac8b041a091bc7e2c56228c5ef544fdd545817f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-11-al2023` - linux; amd64

```console
$ docker pull maven@sha256:414e6023438641a63ceba8dd747f64cab638230a37ad50cff5b3a0fbb6df6db0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **374.3 MB (374263196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d853733e71081d8a84c8239493a3a12ba20019e0c97982018a7dcd64fb7f2f7a`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 17 Sep 2026 21:13:04 GMT
COPY /rootfs/ / # buildkit
# Thu, 17 Sep 2026 21:13:04 GMT
CMD ["/bin/bash"]
# Thu, 17 Sep 2026 22:21:48 GMT
ARG version=11.0.32.10-1
# Thu, 17 Sep 2026 22:21:48 GMT
# ARGS: version=11.0.32.10-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-jmods-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 17 Sep 2026 22:21:48 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 22:21:48 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
# Thu, 17 Sep 2026 23:23:44 GMT
RUN yum install -y tar which gzip # TODO remove # buildkit
# Thu, 17 Sep 2026 23:23:46 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Thu, 17 Sep 2026 23:23:46 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 17 Sep 2026 23:23:46 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 17 Sep 2026 23:23:46 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 17 Sep 2026 23:23:46 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 17 Sep 2026 23:23:46 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 17 Sep 2026 23:23:46 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 17 Sep 2026 23:23:46 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 17 Sep 2026 23:23:46 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 17 Sep 2026 23:23:46 GMT
ARG USER_HOME_DIR=/root
# Thu, 17 Sep 2026 23:23:46 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 17 Sep 2026 23:23:46 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 17 Sep 2026 23:23:46 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:0f0cc63a5845e28f771c9fceda4decc68b806470b009dae4085b441df0329b69`  
		Last Modified: Mon, 31 Aug 2026 23:14:18 GMT  
		Size: 54.6 MB (54586282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a612290f3cf64e5d22695a874c0c53660d69a5518f43428845cb903a5b4b29f`  
		Last Modified: Thu, 17 Sep 2026 22:22:07 GMT  
		Size: 153.5 MB (153480594 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c18767b93f23f382499cc579a25f173ac40f08c50309c6bfd5dff3a8ddedd470`  
		Last Modified: Thu, 17 Sep 2026 23:24:04 GMT  
		Size: 143.3 MB (143306956 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5e30998b18fe4c8e5092430398c2662dca5432500db4c7a753de131cba2a8d1`  
		Last Modified: Thu, 17 Sep 2026 23:24:01 GMT  
		Size: 13.5 MB (13528372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7803c00aee855353bc2d9402961d269bcae5dc4d3c995abe14bb44c4827c626a`  
		Last Modified: Thu, 17 Sep 2026 23:24:01 GMT  
		Size: 9.4 MB (9359982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e01e548a4fe307e2c985b7c107f6ad336c3aa87a247d57a26e2830f2dd40e0ae`  
		Last Modified: Thu, 17 Sep 2026 23:24:01 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2182c231397e6abd53f13260c56fff0425b8f50b7bb5d83d5c2e8305f870ffe0`  
		Last Modified: Thu, 17 Sep 2026 23:24:02 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-11-al2023` - unknown; unknown

```console
$ docker pull maven@sha256:851c1eba5e2bb56bf9b538543056b9ee83ef8570ec8578d309a19e471a8b88bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6288865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e959f162ff0d41ab19ae196001d979d743868cd7d27baf8e458b7cb50fa57b67`

```dockerfile
```

-	Layers:
	-	`sha256:4102a744c0cc61e63531889dedf130f70abde93fc06501761d115268235e401a`  
		Last Modified: Thu, 17 Sep 2026 23:24:01 GMT  
		Size: 6.3 MB (6271570 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d13c23c429ef001947c200796e2a7cfc9286f44e4ce8a3b9cd9d086af241e423`  
		Last Modified: Thu, 17 Sep 2026 23:24:00 GMT  
		Size: 17.3 KB (17295 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-11-al2023` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:c054a83b2b62c3de589b9a134efbdb60ba097cb319d18c08bbecb4138c04919c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **370.3 MB (370275610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:242d17fafc59b75674e8c3ff9f015cd0c4ab178e00a596b8e2cace1eefad23bd`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 17 Sep 2026 21:12:44 GMT
COPY /rootfs/ / # buildkit
# Thu, 17 Sep 2026 21:12:44 GMT
CMD ["/bin/bash"]
# Thu, 17 Sep 2026 22:45:57 GMT
ARG version=11.0.32.10-1
# Thu, 17 Sep 2026 22:45:57 GMT
# ARGS: version=11.0.32.10-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-jmods-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 17 Sep 2026 22:45:57 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 22:45:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
# Thu, 17 Sep 2026 23:27:02 GMT
RUN yum install -y tar which gzip # TODO remove # buildkit
# Thu, 17 Sep 2026 23:27:04 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Thu, 17 Sep 2026 23:27:04 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 17 Sep 2026 23:27:04 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 17 Sep 2026 23:27:04 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 17 Sep 2026 23:27:04 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 17 Sep 2026 23:27:04 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 17 Sep 2026 23:27:04 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 17 Sep 2026 23:27:04 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 17 Sep 2026 23:27:05 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 17 Sep 2026 23:27:05 GMT
ARG USER_HOME_DIR=/root
# Thu, 17 Sep 2026 23:27:05 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 17 Sep 2026 23:27:05 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 17 Sep 2026 23:27:05 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:6b98cf5afd5c5e1a58de351abf0b1ec3a4a61b63fd5a86c62edc6367d59ac249`  
		Last Modified: Mon, 31 Aug 2026 23:14:33 GMT  
		Size: 53.5 MB (53452573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71bb4451ef33b38ad9720358ec4b4f8e9b546d84a6006522d3af0510e6141caa`  
		Last Modified: Thu, 17 Sep 2026 22:46:19 GMT  
		Size: 152.1 MB (152055014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cfb6304302364c28de8149069448d84a3cc7d6758265a6fff1006b512cab840`  
		Last Modified: Thu, 17 Sep 2026 23:27:25 GMT  
		Size: 141.6 MB (141643072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bedea120936231cf87d2d33ac7042a0704402e7882471b95ea1ee7d311edc5f1`  
		Last Modified: Thu, 17 Sep 2026 23:27:22 GMT  
		Size: 13.8 MB (13763955 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b06578b84ea79b17632e98898e6c2d2e6f9748de0c1411051dd9d92245999b0e`  
		Last Modified: Thu, 17 Sep 2026 23:27:22 GMT  
		Size: 9.4 MB (9359983 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c7993e613f292e247f56ed37036c6dedc10620d887f0b419b72c7a9a6b5aa92`  
		Last Modified: Thu, 17 Sep 2026 23:27:21 GMT  
		Size: 854.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afb20d159d851c1e58b86f10da92849817fc76251b2735c97068256a04e4b1fa`  
		Last Modified: Thu, 17 Sep 2026 23:27:22 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-11-al2023` - unknown; unknown

```console
$ docker pull maven@sha256:51406400c3b41c39f0572394a2da0140cba63de1d8b7b318905dbefbc1728460
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6288859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5909a631ddad7a17b872937f4bbfe54e810b224d226777f7d16f118c7048442`

```dockerfile
```

-	Layers:
	-	`sha256:c112c58c8b14bc6929a1613b613c8aa625528e7cfe161999d80b4b1b703c65f7`  
		Last Modified: Thu, 17 Sep 2026 23:27:22 GMT  
		Size: 6.3 MB (6271380 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c2ef8a062631eee26af154dd2844fb2650bd9d46899998ac1e0ad439dae3be7e`  
		Last Modified: Thu, 17 Sep 2026 23:27:21 GMT  
		Size: 17.5 KB (17479 bytes)  
		MIME: application/vnd.in-toto+json
