## `maven:3-amazoncorretto-17-al2023`

```console
$ docker pull maven@sha256:67adba35abdea30d49868ddf02136bb5fa046acc54d2c39273d806a0b0962bbf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-17-al2023` - linux; amd64

```console
$ docker pull maven@sha256:90e7e1cdbafc97a380b2ff657682cff4f0c38d27c561d94b803b31518121d7bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **359.1 MB (359096564 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0b4baf2ef64434f77f6d2d256c548a47a499cdeb16da59447225aa570ddf341`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 22 Jun 2026 17:59:34 GMT
COPY /rootfs/ / # buildkit
# Mon, 22 Jun 2026 17:59:34 GMT
CMD ["/bin/bash"]
# Mon, 22 Jun 2026 18:05:06 GMT
ARG version=17.0.19.10-1
# Mon, 22 Jun 2026 18:05:06 GMT
ARG package_version=1
# Mon, 22 Jun 2026 18:05:06 GMT
# ARGS: version=17.0.19.10-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 22 Jun 2026 18:05:06 GMT
ENV LANG=C.UTF-8
# Mon, 22 Jun 2026 18:05:06 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
# Thu, 02 Jul 2026 06:44:45 GMT
RUN yum install -y tar which gzip findutils # TODO remove # buildkit
# Thu, 02 Jul 2026 06:44:46 GMT
RUN yum install -y openssh-clients # buildkit
# Thu, 02 Jul 2026 06:44:46 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 02 Jul 2026 06:44:46 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 02 Jul 2026 06:44:46 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 02 Jul 2026 06:44:46 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 02 Jul 2026 06:44:46 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 02 Jul 2026 06:44:46 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 02 Jul 2026 06:44:46 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 02 Jul 2026 06:44:46 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 02 Jul 2026 06:44:46 GMT
ARG USER_HOME_DIR=/root
# Thu, 02 Jul 2026 06:44:46 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 02 Jul 2026 06:44:46 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 02 Jul 2026 06:44:46 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:43a4ccfcda545d0357b8595db01c68db022db4283c68d08e06427e6c91ac7063`  
		Last Modified: Sat, 13 Jun 2026 02:07:52 GMT  
		Size: 54.6 MB (54574183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:123c983efb3d9caab78dd5f7e804d4131aca7970c4f8c80cdc377a8fc76a1809`  
		Last Modified: Mon, 22 Jun 2026 18:05:28 GMT  
		Size: 157.2 MB (157157640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9d821ac3e042dbfa4fc70e49ab8b44aad2387f5b114035f9ab424e9bd2a53ac`  
		Last Modified: Thu, 02 Jul 2026 06:45:05 GMT  
		Size: 125.5 MB (125472688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:469e27f7d3f29a24c3b5bb0a36e5f46d074b7cb02bc784d62447befc4d31478a`  
		Last Modified: Thu, 02 Jul 2026 06:45:03 GMT  
		Size: 12.5 MB (12531078 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cc3f901f988689c7b70b59785cc05b421e49ed63de0f8d8a8d9eceb79f8db8e`  
		Last Modified: Thu, 02 Jul 2026 06:45:03 GMT  
		Size: 9.4 MB (9359966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c46288300bfaa2dd6901337323c7922011ed154f9646742520258ba39223c463`  
		Last Modified: Thu, 02 Jul 2026 06:45:02 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf506fff4f254198214cb171b88a1eb005a405388fced3522930622f83d74112`  
		Last Modified: Thu, 02 Jul 2026 06:45:03 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-17-al2023` - unknown; unknown

```console
$ docker pull maven@sha256:df54fae2b27c392658a0b695ea366135a2449a6e8b56beea58d184a82b647037
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6261336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2eb863bdd00081ef5dee961b390057db092e6a5383206b0ecfa201037cda8ca`

```dockerfile
```

-	Layers:
	-	`sha256:9cba716d45c65b76038c552dd7164a6ef0fcea9e9096e6513c15312e08610de3`  
		Last Modified: Thu, 02 Jul 2026 06:45:02 GMT  
		Size: 6.2 MB (6245047 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b32464a924932c80368b6b5cafdd3ed98b7374bd2e697d1a894fe299e9f5cfb8`  
		Last Modified: Thu, 02 Jul 2026 06:45:02 GMT  
		Size: 16.3 KB (16289 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-17-al2023` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:ad11f9caf6fd6ebd3fa6ef15e3761b779e20e436b4520823153f7755f6052b15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **355.6 MB (355562076 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:534f69419bcf3f9efc54734550f80d517330911e55f7617f4cb2b02fa891a626`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 22 Jun 2026 17:59:55 GMT
COPY /rootfs/ / # buildkit
# Mon, 22 Jun 2026 17:59:55 GMT
CMD ["/bin/bash"]
# Mon, 22 Jun 2026 18:14:43 GMT
ARG version=17.0.19.10-1
# Mon, 22 Jun 2026 18:14:43 GMT
ARG package_version=1
# Mon, 22 Jun 2026 18:14:43 GMT
# ARGS: version=17.0.19.10-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 22 Jun 2026 18:14:43 GMT
ENV LANG=C.UTF-8
# Mon, 22 Jun 2026 18:14:43 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
# Thu, 02 Jul 2026 06:36:51 GMT
RUN yum install -y tar which gzip findutils # TODO remove # buildkit
# Thu, 02 Jul 2026 06:36:53 GMT
RUN yum install -y openssh-clients # buildkit
# Thu, 02 Jul 2026 06:36:53 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 02 Jul 2026 06:36:53 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 02 Jul 2026 06:36:53 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 02 Jul 2026 06:36:53 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 02 Jul 2026 06:36:53 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 02 Jul 2026 06:36:53 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 02 Jul 2026 06:36:53 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 02 Jul 2026 06:36:53 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 02 Jul 2026 06:36:53 GMT
ARG USER_HOME_DIR=/root
# Thu, 02 Jul 2026 06:36:53 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 02 Jul 2026 06:36:53 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 02 Jul 2026 06:36:53 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:9d73cc96eee98f0257861d2c8c5e7eac1d4fd5e92dd1ed16608b0040908eb5e0`  
		Last Modified: Fri, 12 Jun 2026 22:22:20 GMT  
		Size: 53.5 MB (53450686 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2e6827a1bd934536bbaca8ee73b82a907a6f504f2a8c7bf2da0903d11d72d4b`  
		Last Modified: Mon, 22 Jun 2026 18:15:06 GMT  
		Size: 156.0 MB (155988813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d42a6601d7adc77fdd598305964fae2895db99a7008431faea38efa953bed164`  
		Last Modified: Thu, 02 Jul 2026 06:37:15 GMT  
		Size: 124.0 MB (123974079 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26af959fede068be30b34ae7f1151ce8c999cf84632e64750c0f3e406d4902b5`  
		Last Modified: Thu, 02 Jul 2026 06:37:12 GMT  
		Size: 12.8 MB (12787515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9adf30b7cc90a5b3f27d637ab0fc9c0209bd58c032b3de96bed4b295c31381e`  
		Last Modified: Thu, 02 Jul 2026 06:37:12 GMT  
		Size: 9.4 MB (9359971 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29f14486b28220aef25952b649e950d62232b073f5756801b7145b957ba0847d`  
		Last Modified: Thu, 02 Jul 2026 06:37:11 GMT  
		Size: 853.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1674138f6ce0031280085d218477e08d105005080d93d92db68771d625bed425`  
		Last Modified: Thu, 02 Jul 2026 06:37:13 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-17-al2023` - unknown; unknown

```console
$ docker pull maven@sha256:1d4332fac6a3eef69a0d3c5fa7e76b0c51b89a1469414a3e3830a7b8e485ebb0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6260414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1905c26b28c0bf33704ff96004ded39dc15f071520a30070c501ab0c9e2328b8`

```dockerfile
```

-	Layers:
	-	`sha256:f41444fae3ff96a54076a2110c341e25452a7c2598fda93a29aeca9b9e096fec`  
		Last Modified: Thu, 02 Jul 2026 06:37:11 GMT  
		Size: 6.2 MB (6243978 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8071baaff58119d70df82b5aae63a7b3cd8ddeda9c7560794de8844869875535`  
		Last Modified: Thu, 02 Jul 2026 06:37:11 GMT  
		Size: 16.4 KB (16436 bytes)  
		MIME: application/vnd.in-toto+json
