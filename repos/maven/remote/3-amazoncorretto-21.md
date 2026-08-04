## `maven:3-amazoncorretto-21`

```console
$ docker pull maven@sha256:a7f84ee223e9b6a1ba462667cdb98e282adf79d02fbd1ad3091ad0bb2feff1d7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-21` - linux; amd64

```console
$ docker pull maven@sha256:ea88839bfe35ee04aa0e2c0128340b7afdebcc536afae40195c34456531dfdce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **383.5 MB (383516704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f3d89e74d8f59dca77225f72eb74b46fab2c48f752797d8ebae6b61cec9212d`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 04 Aug 2026 00:27:38 GMT
COPY /rootfs/ / # buildkit
# Tue, 04 Aug 2026 00:27:38 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 00:58:13 GMT
ARG version=21.0.12.8-1
# Tue, 04 Aug 2026 00:58:13 GMT
ARG package_version=1
# Tue, 04 Aug 2026 00:58:13 GMT
# ARGS: version=21.0.12.8-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 04 Aug 2026 00:58:13 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 00:58:13 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Tue, 04 Aug 2026 20:28:26 GMT
RUN yum install -y tar which gzip # TODO remove # buildkit
# Tue, 04 Aug 2026 20:28:28 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Tue, 04 Aug 2026 20:28:28 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 04 Aug 2026 20:28:28 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 04 Aug 2026 20:28:28 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 04 Aug 2026 20:28:28 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 04 Aug 2026 20:28:28 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 04 Aug 2026 20:28:28 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 04 Aug 2026 20:28:28 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 04 Aug 2026 20:28:28 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 04 Aug 2026 20:28:28 GMT
ARG USER_HOME_DIR=/root
# Tue, 04 Aug 2026 20:28:28 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 04 Aug 2026 20:28:28 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 04 Aug 2026 20:28:28 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:1c635d63e15b914a52c850733b73b200164c1b4f22ce422b48b4130f93dee906`  
		Last Modified: Tue, 28 Jul 2026 03:02:31 GMT  
		Size: 54.6 MB (54572680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a40e30f149715e28b61bbced497841a83ce0cdb9f6b5bc286e4a9ce94aa1ab2`  
		Last Modified: Tue, 04 Aug 2026 00:58:35 GMT  
		Size: 170.4 MB (170440375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83949e9f558955241eabff74105b2d732385301ee3f18520586523c1fd022f4e`  
		Last Modified: Tue, 04 Aug 2026 20:28:49 GMT  
		Size: 135.8 MB (135824922 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9467d57d84a8f4c207ed673ba2d0331c4232f33e7ebd029b775e7a429ec098b`  
		Last Modified: Tue, 04 Aug 2026 20:28:47 GMT  
		Size: 13.3 MB (13317742 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d7e1e84f292867e978e9029ced2367b512583fb7af29d67d6974df7758ed526`  
		Last Modified: Tue, 04 Aug 2026 20:28:46 GMT  
		Size: 9.4 MB (9359975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55a6eda3113b8503db3c0534bba20371d2291af420baa76439b3096d6c750316`  
		Last Modified: Tue, 04 Aug 2026 20:28:46 GMT  
		Size: 852.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36c1296f5f6a2415945033d6fcdd5036c890acd194076f1d1820ed76b480ef34`  
		Last Modified: Tue, 04 Aug 2026 20:28:47 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-21` - unknown; unknown

```console
$ docker pull maven@sha256:4dbe77deb668364b82861abfb22d9b92a6554b7597187f7e91cdf1cf1b125ee1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6266600 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2c0d5996680dd1c80d1e887059f9f00bda1061036d5085c607bf531ed883560`

```dockerfile
```

-	Layers:
	-	`sha256:1d646eceb5a70b52033e8dd293d2ce49a0971b89c376ac355eca508c98cff9ff`  
		Last Modified: Tue, 04 Aug 2026 20:28:46 GMT  
		Size: 6.2 MB (6249305 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2c7c3e1889d8af5b09ae570c3f6ab445cf1b54655e04a280d0f1e5b02a2259e8`  
		Last Modified: Tue, 04 Aug 2026 20:28:46 GMT  
		Size: 17.3 KB (17295 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-21` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:eb0c2a2a280cd0501bd2ffabfd407ec66e7e74299226c02b6a64256c7ec0558b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **379.2 MB (379176698 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b3674fd5cb166f72e7409b8dfd6cedaa3453a6caa7588e2043f6eda2aa34ad0`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 04 Aug 2026 00:27:37 GMT
COPY /rootfs/ / # buildkit
# Tue, 04 Aug 2026 00:27:37 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 00:58:02 GMT
ARG version=21.0.12.8-1
# Tue, 04 Aug 2026 00:58:02 GMT
ARG package_version=1
# Tue, 04 Aug 2026 00:58:02 GMT
# ARGS: version=21.0.12.8-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 04 Aug 2026 00:58:02 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 00:58:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Tue, 04 Aug 2026 20:28:01 GMT
RUN yum install -y tar which gzip # TODO remove # buildkit
# Tue, 04 Aug 2026 20:28:03 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Tue, 04 Aug 2026 20:28:03 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 04 Aug 2026 20:28:03 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 04 Aug 2026 20:28:03 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 04 Aug 2026 20:28:03 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 04 Aug 2026 20:28:03 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 04 Aug 2026 20:28:03 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 04 Aug 2026 20:28:03 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 04 Aug 2026 20:28:04 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 04 Aug 2026 20:28:04 GMT
ARG USER_HOME_DIR=/root
# Tue, 04 Aug 2026 20:28:04 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 04 Aug 2026 20:28:04 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 04 Aug 2026 20:28:04 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:0d194348effd1a9f66c459a1b81ed9823b1301b8d182e914b8ddc71c54c528e5`  
		Last Modified: Tue, 28 Jul 2026 08:44:17 GMT  
		Size: 53.4 MB (53448657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4367aa016d239abfeb477b7cb1f6cc4f80e44ab22d950e582cc162e16bfe3866`  
		Last Modified: Tue, 04 Aug 2026 00:58:26 GMT  
		Size: 168.7 MB (168689674 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e8c183d44fb6b32a2fcad0a41962dc4e4a6e6f52b908720658aea860efa9d27`  
		Last Modified: Tue, 04 Aug 2026 20:28:24 GMT  
		Size: 134.1 MB (134107650 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc3b229ac0ec5ce31c274c807d0e6240d9994f1e7c00bd31dbba644dd8c32a86`  
		Last Modified: Tue, 04 Aug 2026 20:28:22 GMT  
		Size: 13.6 MB (13569726 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07016d3726c7f99191212aa6eeae5a4db0f912b58fc0b87fd27f154f4e9033db`  
		Last Modified: Tue, 04 Aug 2026 20:28:22 GMT  
		Size: 9.4 MB (9359983 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6afebd6a925fba50b4f95be5a62336368fda9784d4083e6a016d5ca2187b6b3c`  
		Last Modified: Tue, 04 Aug 2026 20:28:21 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea80c6bde7e1f894783e7150814dcb4a906cf75cab093e250d721663d38473a7`  
		Last Modified: Tue, 04 Aug 2026 20:28:22 GMT  
		Size: 157.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-21` - unknown; unknown

```console
$ docker pull maven@sha256:b2b4d1a2860ada13ca2f57852b558925b3703258e9dd7cf021cfbf6f63b198fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6265754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c15820efd38461a0a570d51ee20844b9204b713f5e6794504f16fdd68d2d78cc`

```dockerfile
```

-	Layers:
	-	`sha256:08284d7249bb6fea9e11aa410cad1aa140364dec700a0b852c9a58c14a532bdb`  
		Last Modified: Tue, 04 Aug 2026 20:28:21 GMT  
		Size: 6.2 MB (6248275 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d1774f4fef85ea7245a56ca7c0877f3b9ff2212edf8326eb90fbe1d34a76cb4b`  
		Last Modified: Tue, 04 Aug 2026 20:28:21 GMT  
		Size: 17.5 KB (17479 bytes)  
		MIME: application/vnd.in-toto+json
