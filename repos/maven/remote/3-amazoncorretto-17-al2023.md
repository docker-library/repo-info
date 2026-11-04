## `maven:3-amazoncorretto-17-al2023`

```console
$ docker pull maven@sha256:b993648764363c3b0124bc21e34cd9487e186a946544e4b33dff32f5ef330551
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-17-al2023` - linux; amd64

```console
$ docker pull maven@sha256:243dfd33167692b8f3e76165d435f83347b9a37ee80a1a544f7aa334a6818f96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **396.2 MB (396243061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff2c9082940de9b577b9a1a1108f89f25950c15b27af376fccf0050b48cfe59f`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 02 Nov 2026 19:55:48 GMT
COPY /rootfs/ / # buildkit
# Mon, 02 Nov 2026 19:55:48 GMT
CMD ["/bin/bash"]
# Mon, 02 Nov 2026 20:11:02 GMT
ARG version=17.0.21.0.11-1
# Mon, 02 Nov 2026 20:11:02 GMT
ARG resource_version=17.0.21.0.11
# Mon, 02 Nov 2026 20:11:02 GMT
ARG package_version=1
# Mon, 02 Nov 2026 20:11:02 GMT
# ARGS: version=17.0.21.0.11-1 resource_version=17.0.21.0.11 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 02 Nov 2026 20:11:02 GMT
ENV LANG=C.UTF-8
# Mon, 02 Nov 2026 20:11:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
# Tue, 03 Nov 2026 23:09:24 GMT
RUN yum install -y tar which gzip # TODO remove # buildkit
# Tue, 03 Nov 2026 23:09:26 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Tue, 03 Nov 2026 23:09:26 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 03 Nov 2026 23:09:26 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 03 Nov 2026 23:09:26 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 03 Nov 2026 23:09:26 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 03 Nov 2026 23:09:26 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 03 Nov 2026 23:09:26 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 03 Nov 2026 23:09:26 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 03 Nov 2026 23:09:26 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 03 Nov 2026 23:09:26 GMT
ARG USER_HOME_DIR=/root
# Tue, 03 Nov 2026 23:09:26 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 03 Nov 2026 23:09:26 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 03 Nov 2026 23:09:26 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:36d0e51e1ea56325505d833f7d87567b6720c396e9a5742de0f157b063545163`  
		Last Modified: Sat, 31 Oct 2026 02:35:05 GMT  
		Size: 54.6 MB (54569615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5f4df9cd25431f7f7e688d1d91119f0cc4008a6fcc2917c42c308df850fbd13`  
		Last Modified: Mon, 02 Nov 2026 20:11:22 GMT  
		Size: 157.4 MB (157424747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9abe2e4ff281e63d9c44066215da1635fdc9121e541a349dbe6d3d27df3123ef`  
		Last Modified: Tue, 03 Nov 2026 23:09:46 GMT  
		Size: 160.7 MB (160654973 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0aa50a1d29acbd051f5cac84cd743eba2bed690628d31def74b17becfe8dc1e2`  
		Last Modified: Tue, 03 Nov 2026 23:09:43 GMT  
		Size: 13.5 MB (13533711 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c80855ed0dd2505242b25188810eda31951413d38cabf0a86115bd866b902ceb`  
		Last Modified: Tue, 03 Nov 2026 23:09:43 GMT  
		Size: 10.1 MB (10059010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3754d7b6eed4d51834737bb69e0407bd05d65ba429a9d35365f636f45701dd5`  
		Last Modified: Tue, 03 Nov 2026 23:09:42 GMT  
		Size: 848.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7fa0da6fb7fa04cbc2f674e39ac4fff00004cdd0718dc28035a3187ce8a9db7`  
		Last Modified: Tue, 03 Nov 2026 23:09:43 GMT  
		Size: 157.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-17-al2023` - unknown; unknown

```console
$ docker pull maven@sha256:53f6a50377031d2bc4b8ec63d3c0c56837bf40fdb54a72088170bda142d4e30a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6269901 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0783f302560ff35c2fb326e37f329c3aee8441f067a707355840d3f839075e64`

```dockerfile
```

-	Layers:
	-	`sha256:cbe9e02018622dd830baca8221da4bee3e18ebe4d28e703d50b7a1eff5ece184`  
		Last Modified: Tue, 03 Nov 2026 23:09:42 GMT  
		Size: 6.3 MB (6252598 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:94f455313afab98db41923c0970d25792a0fb5d2b1e6b669a6d7f1dd1fa22bb2`  
		Last Modified: Tue, 03 Nov 2026 23:09:42 GMT  
		Size: 17.3 KB (17303 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-17-al2023` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:0225cd5f06db5a280d74e66d1f0fbeecb806284790196e937aa83d8a69bed9f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **392.3 MB (392303452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5959eb32ddd95df4cb528e972ff388f117dc8d8cd260555b2b819d388f7bc4b3`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 02 Nov 2026 19:55:47 GMT
COPY /rootfs/ / # buildkit
# Mon, 02 Nov 2026 19:55:47 GMT
CMD ["/bin/bash"]
# Mon, 02 Nov 2026 20:10:19 GMT
ARG version=17.0.21.0.11-1
# Mon, 02 Nov 2026 20:10:19 GMT
ARG resource_version=17.0.21.0.11
# Mon, 02 Nov 2026 20:10:19 GMT
ARG package_version=1
# Mon, 02 Nov 2026 20:10:19 GMT
# ARGS: version=17.0.21.0.11-1 resource_version=17.0.21.0.11 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 02 Nov 2026 20:10:19 GMT
ENV LANG=C.UTF-8
# Mon, 02 Nov 2026 20:10:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
# Tue, 03 Nov 2026 23:15:30 GMT
RUN yum install -y tar which gzip # TODO remove # buildkit
# Tue, 03 Nov 2026 23:15:32 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Tue, 03 Nov 2026 23:15:32 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 03 Nov 2026 23:15:32 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 03 Nov 2026 23:15:32 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 03 Nov 2026 23:15:32 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 03 Nov 2026 23:15:32 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 03 Nov 2026 23:15:32 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 03 Nov 2026 23:15:32 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 03 Nov 2026 23:15:32 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 03 Nov 2026 23:15:32 GMT
ARG USER_HOME_DIR=/root
# Tue, 03 Nov 2026 23:15:32 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 03 Nov 2026 23:15:32 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 03 Nov 2026 23:15:32 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:c1eee8f81fa5e953bb6eab0ff6f612967f0ef8b1dc9fac3cb2319b1021f7a245`  
		Last Modified: Sat, 31 Oct 2026 02:35:03 GMT  
		Size: 53.5 MB (53456123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32d2be6781a9c3e02dd7a813a63a217383fd661de4342d350e94f23698e53c86`  
		Last Modified: Mon, 02 Nov 2026 20:10:42 GMT  
		Size: 156.3 MB (156294835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97a724cba6053b72dfbac0752d5665cc4a2db45d4aeee11ffa4ea21822dc93b1`  
		Last Modified: Tue, 03 Nov 2026 23:15:54 GMT  
		Size: 158.7 MB (158720129 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8158f55d3d65b78a4fe2b71a712015ef66309f7cf2a5a0bfc6f3016e6c42fe08`  
		Last Modified: Tue, 03 Nov 2026 23:15:51 GMT  
		Size: 13.8 MB (13772387 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58907fb17f8d0d8799b268e0758dfc4b5c94b542395a8e485cc0c3a39faa2cb7`  
		Last Modified: Tue, 03 Nov 2026 23:15:51 GMT  
		Size: 10.1 MB (10058970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5e7def8ba9e4dc55bd3f0b2e8a0df8aab426110bf2ff4aede6dbcc4b653888d`  
		Last Modified: Tue, 03 Nov 2026 23:15:51 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da72add4b738671a80b7faf2c5895d172e6764d8fad8b207c6a4e890f2027b1d`  
		Last Modified: Tue, 03 Nov 2026 23:15:52 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-17-al2023` - unknown; unknown

```console
$ docker pull maven@sha256:a388b7a224708df22dc0063279e91cdd1fdcd3cd1e96fb9e4713da7aa86647ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6269052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3a1dc7bf2e9db29f8eaa5a20bf9677ced410ea2455e0d630084a163f33a411a`

```dockerfile
```

-	Layers:
	-	`sha256:42e7ee993a5fc12521837c39403646202a61bc64c13f73b7525fc7c91c224d7d`  
		Last Modified: Tue, 03 Nov 2026 23:15:51 GMT  
		Size: 6.3 MB (6251565 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1a2d75ba08f89f50c6c5eea15ad18b2537b4b4c75dc8fbe90f39e99b5b351c37`  
		Last Modified: Tue, 03 Nov 2026 23:15:51 GMT  
		Size: 17.5 KB (17487 bytes)  
		MIME: application/vnd.in-toto+json
