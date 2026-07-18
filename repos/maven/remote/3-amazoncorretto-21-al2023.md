## `maven:3-amazoncorretto-21-al2023`

```console
$ docker pull maven@sha256:cc6d01a53e95e525f8dda3ffd1f0d2efcfd45a4f9e9fc125d22e58a21d2be31b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-21-al2023` - linux; amd64

```console
$ docker pull maven@sha256:83fc1c05d8c74c08bac4c5315675aea85406bd41ebf5dbcafb8f37c5eab99f74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **379.3 MB (379291482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88305d7b02fc63314b43397d5a4716674cecf9ce45a8a25b94bd0a82d5c2f424`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:23 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:23 GMT
CMD ["/bin/bash"]
# Sat, 18 Jul 2026 00:13:03 GMT
ARG version=21.0.11.10-1
# Sat, 18 Jul 2026 00:13:03 GMT
ARG package_version=1
# Sat, 18 Jul 2026 00:13:03 GMT
# ARGS: version=21.0.11.10-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Sat, 18 Jul 2026 00:13:03 GMT
ENV LANG=C.UTF-8
# Sat, 18 Jul 2026 00:13:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Sat, 18 Jul 2026 01:14:43 GMT
RUN yum install -y tar which gzip findutils # TODO remove # buildkit
# Sat, 18 Jul 2026 01:14:44 GMT
RUN yum install -y openssh-clients # buildkit
# Sat, 18 Jul 2026 01:14:44 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Sat, 18 Jul 2026 01:14:44 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Sat, 18 Jul 2026 01:14:44 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Sat, 18 Jul 2026 01:14:44 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Sat, 18 Jul 2026 01:14:44 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 18 Jul 2026 01:14:44 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Sat, 18 Jul 2026 01:14:45 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Sat, 18 Jul 2026 01:14:45 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Sat, 18 Jul 2026 01:14:45 GMT
ARG USER_HOME_DIR=/root
# Sat, 18 Jul 2026 01:14:45 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 18 Jul 2026 01:14:45 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 18 Jul 2026 01:14:45 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:3b5eb82da667b3e3ec6bc9d0b202bfba5f45c665af1ff4c33b4d24e971967e96`  
		Last Modified: Fri, 10 Jul 2026 21:57:49 GMT  
		Size: 54.6 MB (54574264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ab6bb9de96f344f45f343bb3d665eef1c0a7efc48d63d27cfe871019c513315`  
		Last Modified: Sat, 18 Jul 2026 00:13:26 GMT  
		Size: 170.4 MB (170443315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06aa44e8bece3ede18a8dd9db7677191ded58ec68cbad4fe2f65e598f527efb2`  
		Last Modified: Sat, 18 Jul 2026 01:15:02 GMT  
		Size: 132.4 MB (132387658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffda73b5a99374baeedd8e4dfa95853102fe8dbac8ec0127a2d8155bbf646609`  
		Last Modified: Sat, 18 Jul 2026 01:14:59 GMT  
		Size: 12.5 MB (12525262 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed8f608c9591c195926966549e7784227067e65bdfeac4b576c879edb5d00d6d`  
		Last Modified: Sat, 18 Jul 2026 01:14:59 GMT  
		Size: 9.4 MB (9359972 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c8acdb60c6248f788c646550ea5b9a15f211fbc3b3ed42a48ee506e2a42b6c1`  
		Last Modified: Sat, 18 Jul 2026 01:14:58 GMT  
		Size: 853.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b1af010dbc43dbdb0b63e359ea12c344bfa9d6d621fb190747916e40e9d6aa9`  
		Last Modified: Sat, 18 Jul 2026 01:15:00 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-21-al2023` - unknown; unknown

```console
$ docker pull maven@sha256:2090b35b3a86b2795d5597149b6643ce6e83f29e7f46314f07acef374fad2117
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6264548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8e57f4e7386d988ce446af1e02fe0632f437c10ad38b2ec4bba52210e1bdf70`

```dockerfile
```

-	Layers:
	-	`sha256:6d70859852aecf642721401dde32db3173c0c85d9e683fafd2eb2c2ebfd6a5a1`  
		Last Modified: Sat, 18 Jul 2026 01:14:59 GMT  
		Size: 6.2 MB (6248259 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f90e1f6d93244e5e6614a0576a8d122fbb2bad943088ab504c9d4c64a1da09be`  
		Last Modified: Sat, 18 Jul 2026 01:14:58 GMT  
		Size: 16.3 KB (16289 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-21-al2023` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:550e75bd44d478506cc51a4646a5d6f43226706539ab887195ae5328689ddf07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **375.4 MB (375419390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47f7a8386a4aebaab4c2365c54c2b1d0f3e88b7cbc5a4ad0b70d5296f8aba51e`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:13 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:13 GMT
CMD ["/bin/bash"]
# Sat, 18 Jul 2026 00:12:15 GMT
ARG version=21.0.11.10-1
# Sat, 18 Jul 2026 00:12:15 GMT
ARG package_version=1
# Sat, 18 Jul 2026 00:12:15 GMT
# ARGS: version=21.0.11.10-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Sat, 18 Jul 2026 00:12:15 GMT
ENV LANG=C.UTF-8
# Sat, 18 Jul 2026 00:12:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Sat, 18 Jul 2026 01:14:55 GMT
RUN yum install -y tar which gzip findutils # TODO remove # buildkit
# Sat, 18 Jul 2026 01:14:57 GMT
RUN yum install -y openssh-clients # buildkit
# Sat, 18 Jul 2026 01:14:57 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Sat, 18 Jul 2026 01:14:57 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Sat, 18 Jul 2026 01:14:57 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Sat, 18 Jul 2026 01:14:57 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Sat, 18 Jul 2026 01:14:57 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 18 Jul 2026 01:14:57 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Sat, 18 Jul 2026 01:14:57 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Sat, 18 Jul 2026 01:14:57 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Sat, 18 Jul 2026 01:14:57 GMT
ARG USER_HOME_DIR=/root
# Sat, 18 Jul 2026 01:14:57 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 18 Jul 2026 01:14:57 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 18 Jul 2026 01:14:57 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:6e12116aae4fd69e40f0f0c465aeb7f71b0d7db5d37e40fced028a576a31ca9e`  
		Last Modified: Sat, 11 Jul 2026 02:19:28 GMT  
		Size: 53.4 MB (53449232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c715a56b6d192c0e3a303d97cd78e2d1dee5376b25e25daaec28221ab030c1fd`  
		Last Modified: Sat, 18 Jul 2026 00:12:38 GMT  
		Size: 168.7 MB (168719279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fb260ba491c03d51254e15273738fe83a55d980cf6b1d9eb07315b6cb994ca9`  
		Last Modified: Sat, 18 Jul 2026 01:15:16 GMT  
		Size: 131.1 MB (131110288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69a437a0ac2b45a3c89f926b7780dde82168042c8796fb45fba0475e44b050e2`  
		Last Modified: Sat, 18 Jul 2026 01:15:13 GMT  
		Size: 12.8 MB (12779609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13bf6eae657c7e59f79d8d20e6835e92fd58d5de95d4f91433a1a912b52208e2`  
		Last Modified: Sat, 18 Jul 2026 01:15:13 GMT  
		Size: 9.4 MB (9359973 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cf6cd6e80d7cfafffcbe3503484779812fc9ae937377eb057819654a042f9fa`  
		Last Modified: Sat, 18 Jul 2026 01:15:13 GMT  
		Size: 852.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:103032b20d6f1469cc33eafe5d8787dbe50c3886cbe92a85f04c98bb41e268c1`  
		Last Modified: Sat, 18 Jul 2026 01:15:14 GMT  
		Size: 157.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-21-al2023` - unknown; unknown

```console
$ docker pull maven@sha256:a72e62a4d1a76b9ef78f69ec479eaefdb8372108ac7a4daa085c11f947e321b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6263630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93bccb0402d6c74adb3245e09a0b89fe6d21cc4c5ce03a4b432002d00056c249`

```dockerfile
```

-	Layers:
	-	`sha256:a9397cd0d1c2870e12ed199f5b1ce63c357812419e9041e2ca84d4db4d986da5`  
		Last Modified: Sat, 18 Jul 2026 01:15:13 GMT  
		Size: 6.2 MB (6247193 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8bdc470c5e1a893a7c178daee5d80da78c8fd4372d2e1a427ce5b9ac58074056`  
		Last Modified: Sat, 18 Jul 2026 01:15:13 GMT  
		Size: 16.4 KB (16437 bytes)  
		MIME: application/vnd.in-toto+json
