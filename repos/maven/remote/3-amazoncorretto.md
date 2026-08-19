## `maven:3-amazoncorretto`

```console
$ docker pull maven@sha256:268ea01e818014b5b0d5669e6c0431764fa46d8dc51219249aff4c78b8fe901a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto` - linux; amd64

```console
$ docker pull maven@sha256:a3092caa5f1d43b03066abe5be4de63dea2eb35e7d8beed14d14892fe45f4c11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **399.8 MB (399841825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6d24e6934e7fd02807311eb922e7d5eba269d8793cb026b68399040a1dd7016`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 04 Aug 2026 00:27:38 GMT
COPY /rootfs/ / # buildkit
# Tue, 04 Aug 2026 00:27:38 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 00:58:51 GMT
ARG version=25.0.4.7-1
# Tue, 04 Aug 2026 00:58:51 GMT
ARG package_version=1
# Tue, 04 Aug 2026 00:58:51 GMT
# ARGS: version=25.0.4.7-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 04 Aug 2026 00:58:51 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 00:58:51 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Tue, 18 Aug 2026 21:29:32 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Tue, 18 Aug 2026 21:29:32 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 18 Aug 2026 21:29:32 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 18 Aug 2026 21:29:32 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 18 Aug 2026 21:29:32 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 18 Aug 2026 21:29:32 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 18 Aug 2026 21:29:32 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 18 Aug 2026 21:29:32 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 18 Aug 2026 21:29:32 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 18 Aug 2026 21:29:32 GMT
ARG USER_HOME_DIR=/root
# Tue, 18 Aug 2026 21:29:32 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 18 Aug 2026 21:29:32 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 18 Aug 2026 21:29:32 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:1c635d63e15b914a52c850733b73b200164c1b4f22ce422b48b4130f93dee906`  
		Last Modified: Tue, 28 Jul 2026 03:02:31 GMT  
		Size: 54.6 MB (54572680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2408eb84527cb80413943a5c5046a2c3ecf630ffa06142e5bc05f3767756c5da`  
		Last Modified: Tue, 04 Aug 2026 00:59:15 GMT  
		Size: 189.5 MB (189475802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b51cb23ff5d8c1a22d073fed01765fb3975875645a5ddf12fafda681ee1d2955`  
		Last Modified: Tue, 18 Aug 2026 21:29:52 GMT  
		Size: 146.4 MB (146432364 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf246bb53ea4f1db2c9fea918c159d00c7151f645fcb9c5359f3489a0b50917d`  
		Last Modified: Tue, 18 Aug 2026 21:29:50 GMT  
		Size: 9.4 MB (9359968 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c5256e866ac752ffde0dd98af54ec97e9bc26077918a7c5dfe64dc2a63b5ac9`  
		Last Modified: Tue, 18 Aug 2026 21:29:49 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d0e895e096bb0624dc4426e6e660750c43d89e9d331fd3965d56feef5ec99f2`  
		Last Modified: Tue, 18 Aug 2026 21:29:49 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto` - unknown; unknown

```console
$ docker pull maven@sha256:8884905b466306cad3e2e60984c4b9366230bc4387f412ac1432c7b44ec0b1a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6240700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea4842851843e7de780fe0ccea32592668a8157ab20ffdbdd9858e48a5bc5bd4`

```dockerfile
```

-	Layers:
	-	`sha256:73b36fc87744d23a15833365784ea7ba3e009d508c44380d87edc3e0cacdc2d1`  
		Last Modified: Tue, 18 Aug 2026 21:29:49 GMT  
		Size: 6.2 MB (6223913 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:27eb82fd2ddb18306fb6834bcef5a22fabecf678a92fdc408dbe09654d2b4601`  
		Last Modified: Tue, 18 Aug 2026 21:29:49 GMT  
		Size: 16.8 KB (16787 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:d107411cdd011e5790f75b45d9f50d040c626516b33dfb6a159dbc1594a93b11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **395.2 MB (395168726 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed8c58098a3b32af339f174a7a2f0807811eae63e6f03c51885b87449c2af43b`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 04 Aug 2026 00:27:37 GMT
COPY /rootfs/ / # buildkit
# Tue, 04 Aug 2026 00:27:37 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 00:58:09 GMT
ARG version=25.0.4.7-1
# Tue, 04 Aug 2026 00:58:09 GMT
ARG package_version=1
# Tue, 04 Aug 2026 00:58:09 GMT
# ARGS: version=25.0.4.7-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 04 Aug 2026 00:58:09 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 00:58:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
# Tue, 18 Aug 2026 21:29:39 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Tue, 18 Aug 2026 21:29:39 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 18 Aug 2026 21:29:39 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 18 Aug 2026 21:29:39 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 18 Aug 2026 21:29:39 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 18 Aug 2026 21:29:39 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 18 Aug 2026 21:29:39 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 18 Aug 2026 21:29:39 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 18 Aug 2026 21:29:39 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 18 Aug 2026 21:29:39 GMT
ARG USER_HOME_DIR=/root
# Tue, 18 Aug 2026 21:29:39 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 18 Aug 2026 21:29:39 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 18 Aug 2026 21:29:39 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:0d194348effd1a9f66c459a1b81ed9823b1301b8d182e914b8ddc71c54c528e5`  
		Last Modified: Tue, 28 Jul 2026 08:44:17 GMT  
		Size: 53.4 MB (53448657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b6b841110a2e3ff6dc4a335180c283116cb5b503434736e3a118a33f30ef0fa`  
		Last Modified: Tue, 04 Aug 2026 00:58:34 GMT  
		Size: 187.4 MB (187379559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfdc25743142bfd2a8d2d2073ee2e404ade6fe4968d68d6f3da4df8e75a660f1`  
		Last Modified: Tue, 18 Aug 2026 21:30:01 GMT  
		Size: 145.0 MB (144979534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a4853d246fab20efe968846c58b33a44f2962869ca130d8b184d1e98fb41bd5`  
		Last Modified: Tue, 18 Aug 2026 21:29:58 GMT  
		Size: 9.4 MB (9359968 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:332ef6fae5fedefc53dc105b63e1cdf5e488dbeecea5e21027065b232043ffa1`  
		Last Modified: Tue, 18 Aug 2026 21:29:57 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a94448401c66f8b7111860c6ab524067a967fbc387539a35fc947cf75e68e9e6`  
		Last Modified: Tue, 18 Aug 2026 21:29:57 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto` - unknown; unknown

```console
$ docker pull maven@sha256:bb3cda40cc40c21737405e20c6243a76ff397a50d39a4279e463aefc7c352c2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6239946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db68d84d49f637272aeb8c625c2234074c11135e498e7df04845e1348e7229a6`

```dockerfile
```

-	Layers:
	-	`sha256:2f156f88cedeb8e2347709436a4ff8cd65abdf381f191a280f516d50cb2f75ec`  
		Last Modified: Tue, 18 Aug 2026 21:29:58 GMT  
		Size: 6.2 MB (6222942 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a7e286655bf3a115d9cae675aadfc82c23b0db81408eea1b46e6c4178686419d`  
		Last Modified: Tue, 18 Aug 2026 21:29:57 GMT  
		Size: 17.0 KB (17004 bytes)  
		MIME: application/vnd.in-toto+json
