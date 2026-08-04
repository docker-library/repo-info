## `maven:3-amazoncorretto-25-al2023`

```console
$ docker pull maven@sha256:de7a3e517efac1b933af6ceb375974a061ba71c908ea51a18bd937716a8ade93
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-25-al2023` - linux; amd64

```console
$ docker pull maven@sha256:3700c6145dab01564ed2e388ae3ba130a2d2905f401debfd4c9475bbcf090703
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **399.8 MB (399841965 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77c05a7608d29faa27a70e6685040f3768b238e32fa649e18e77263493e51fc9`
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
# Tue, 04 Aug 2026 20:28:00 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Tue, 04 Aug 2026 20:28:00 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 04 Aug 2026 20:28:00 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 04 Aug 2026 20:28:00 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 04 Aug 2026 20:28:00 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 04 Aug 2026 20:28:00 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 04 Aug 2026 20:28:00 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 04 Aug 2026 20:28:01 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 04 Aug 2026 20:28:01 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 04 Aug 2026 20:28:01 GMT
ARG USER_HOME_DIR=/root
# Tue, 04 Aug 2026 20:28:01 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 04 Aug 2026 20:28:01 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 04 Aug 2026 20:28:01 GMT
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
	-	`sha256:38da5ba6c6542877cd11420dbfca527f63bce0098a1b74a4b10307f61920e297`  
		Last Modified: Tue, 04 Aug 2026 20:28:21 GMT  
		Size: 146.4 MB (146432500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f542b8af91076fede6ff4c28a761d4f79a326e27a3a711ac8d237af6dd1407cf`  
		Last Modified: Tue, 04 Aug 2026 20:28:18 GMT  
		Size: 9.4 MB (9359972 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e035c946ef592e23e33f95732ff1b4ef949e984b6cd0f0e883535cd93288abc`  
		Last Modified: Tue, 04 Aug 2026 20:28:17 GMT  
		Size: 852.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd6ce93fb7b67eabba94161dbd4fbc944153ef68496706b815b1be9b9d58668a`  
		Last Modified: Tue, 04 Aug 2026 20:28:17 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-25-al2023` - unknown; unknown

```console
$ docker pull maven@sha256:69fbdaf87af188ae7bcc2528e9443397414a2415e12630a45ceee5d093ceda91
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6240700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e005ca6eacd67e94e81d7ef01299a324dbcf4687c07ed69bfcad0d0389a6ab4`

```dockerfile
```

-	Layers:
	-	`sha256:186b42cac479602873a64454544259177e2d111b545032fd0729992925d4529e`  
		Last Modified: Tue, 04 Aug 2026 20:28:18 GMT  
		Size: 6.2 MB (6223913 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:77c55c3e2953b1c0528a7c76efd7b20aa4375963c34eda0bb8cace5f410ebaec`  
		Last Modified: Tue, 04 Aug 2026 20:28:17 GMT  
		Size: 16.8 KB (16787 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-25-al2023` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:efdad14366836a6dd156c9b61bb7251ded38d5b1cbaa9fec9577881f5a3accc7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **395.2 MB (395168442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69ffa52c289655660cb40a72c8f646d897881c611dd3abd2066847dbf893b1db`
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
# Tue, 04 Aug 2026 20:28:05 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Tue, 04 Aug 2026 20:28:05 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 04 Aug 2026 20:28:05 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 04 Aug 2026 20:28:05 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 04 Aug 2026 20:28:05 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 04 Aug 2026 20:28:05 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 04 Aug 2026 20:28:05 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 04 Aug 2026 20:28:05 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 04 Aug 2026 20:28:05 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 04 Aug 2026 20:28:05 GMT
ARG USER_HOME_DIR=/root
# Tue, 04 Aug 2026 20:28:05 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 04 Aug 2026 20:28:05 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 04 Aug 2026 20:28:05 GMT
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
	-	`sha256:a04128e34baf59a610fccd4bc22960ec2e889a72b971119cf57d9296a30a8a64`  
		Last Modified: Tue, 04 Aug 2026 20:28:27 GMT  
		Size: 145.0 MB (144979242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff121c9a26f58e2856528e424b1fee1586c1e540854ca6873993950eb35b3546`  
		Last Modified: Tue, 04 Aug 2026 20:28:24 GMT  
		Size: 9.4 MB (9359974 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:763cc1013ba50739ff6a30ada862e481fd8438e5310306f17b48148dc6fc6b82`  
		Last Modified: Tue, 04 Aug 2026 20:28:24 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16e4a0f07c2f086f814703e69d8161466bbbff1102344bb2db00c484b175638d`  
		Last Modified: Tue, 04 Aug 2026 20:28:24 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-25-al2023` - unknown; unknown

```console
$ docker pull maven@sha256:5a8861add2815c6eed686536719a269d95e4206b0661b593668d3a6f5d5f9c67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6239946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23a88775eac751dcc240bb56a875436111dde6896e17f44c8bf0a661e607c2f1`

```dockerfile
```

-	Layers:
	-	`sha256:4bf679582dfd90373720b13938deb92a26a0fabc969cb982b4f0d1071400debc`  
		Last Modified: Tue, 04 Aug 2026 20:28:24 GMT  
		Size: 6.2 MB (6222942 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9ced80425cf253d71addd423319763c2de92a23a41cd4f3bb40e98179ec0cc7a`  
		Last Modified: Tue, 04 Aug 2026 20:28:24 GMT  
		Size: 17.0 KB (17004 bytes)  
		MIME: application/vnd.in-toto+json
