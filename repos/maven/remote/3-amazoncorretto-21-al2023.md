## `maven:3-amazoncorretto-21-al2023`

```console
$ docker pull maven@sha256:da3277177469e3727a1063a89533832b99fb9fd7dceaed19894026e65d357ca8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-21-al2023` - linux; amd64

```console
$ docker pull maven@sha256:f2131811b3f39d6cbfdf8e71a111208fcd410bb10ac7bf28475be824430325bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **409.6 MB (409566920 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c3b250841170c50da39173df7fe3e7dfb7e624447195528d755a090a92f88f4`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 02 Nov 2026 19:55:48 GMT
COPY /rootfs/ / # buildkit
# Mon, 02 Nov 2026 19:55:48 GMT
CMD ["/bin/bash"]
# Mon, 02 Nov 2026 20:11:37 GMT
ARG version=21.0.13.0.11-1
# Mon, 02 Nov 2026 20:11:37 GMT
ARG resource_version=21.0.13.0.11
# Mon, 02 Nov 2026 20:11:37 GMT
ARG package_version=1
# Mon, 02 Nov 2026 20:11:37 GMT
# ARGS: version=21.0.13.0.11-1 resource_version=21.0.13.0.11 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 02 Nov 2026 20:11:37 GMT
ENV LANG=C.UTF-8
# Mon, 02 Nov 2026 20:11:37 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Tue, 03 Nov 2026 23:09:41 GMT
RUN yum install -y tar which gzip # TODO remove # buildkit
# Tue, 03 Nov 2026 23:09:43 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Tue, 03 Nov 2026 23:09:43 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 03 Nov 2026 23:09:43 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 03 Nov 2026 23:09:43 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 03 Nov 2026 23:09:43 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 03 Nov 2026 23:09:43 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 03 Nov 2026 23:09:43 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 03 Nov 2026 23:09:43 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 03 Nov 2026 23:09:43 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 03 Nov 2026 23:09:43 GMT
ARG USER_HOME_DIR=/root
# Tue, 03 Nov 2026 23:09:43 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 03 Nov 2026 23:09:43 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 03 Nov 2026 23:09:43 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:36d0e51e1ea56325505d833f7d87567b6720c396e9a5742de0f157b063545163`  
		Last Modified: Sat, 31 Oct 2026 02:35:05 GMT  
		Size: 54.6 MB (54569615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47013ed06cba49f05f3e9f3318fa114d951542fce9a76fce834c5e780eac4a9d`  
		Last Modified: Mon, 02 Nov 2026 20:12:02 GMT  
		Size: 170.7 MB (170747170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cbd16efd2bfb1f58bf146330ad591333aaa9fad9cc309af1c8edc1f2b38c371`  
		Last Modified: Tue, 03 Nov 2026 23:10:05 GMT  
		Size: 160.7 MB (160654992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6d07d22c9b545d55e135bbf9465bee13526fbf62789580a1309a387977751c6`  
		Last Modified: Tue, 03 Nov 2026 23:10:02 GMT  
		Size: 13.5 MB (13535125 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:726479ae5aee5f2399aad1760fdd80968c3ea1f87144598b574bb136c6897560`  
		Last Modified: Tue, 03 Nov 2026 23:10:02 GMT  
		Size: 10.1 MB (10059011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a9ea424bf1f0264637fc6fbceee198cdd7e7afd43f7aad5af8c64c5f2644b64`  
		Last Modified: Tue, 03 Nov 2026 23:10:01 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab5d951936926870a08f55c90a3d7af41ce2dcab4e0d7d78b87d9a16339156a7`  
		Last Modified: Tue, 03 Nov 2026 23:10:02 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-21-al2023` - unknown; unknown

```console
$ docker pull maven@sha256:7863c21f9254b376a1e13c01b11fb5af82fac2080c36cb54bf6e3c727f81f23b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6272325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84295da4c4efccd8174207511d5aab52bc43542df10cf4f4c6b12faa11653cdb`

```dockerfile
```

-	Layers:
	-	`sha256:2a55e6a27b1bbcd33176a40767522858f1b1ad6a72f0126acf52deede53a857c`  
		Last Modified: Tue, 03 Nov 2026 23:10:01 GMT  
		Size: 6.3 MB (6255024 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:657f7d811f9ea498a8b073e4f650fb5153c27845047ba54dd0232eb127bee5c6`  
		Last Modified: Tue, 03 Nov 2026 23:10:01 GMT  
		Size: 17.3 KB (17301 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-21-al2023` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:ccf3288fe928f53f000eaad27557d61d7f1207e597f9729f86e6cc9875d8eecb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **405.0 MB (405028336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e03c316f7cd78c6f6e1328665edd07e39c77f16defc51d200cb4ed3a74e4611d`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 02 Nov 2026 19:55:47 GMT
COPY /rootfs/ / # buildkit
# Mon, 02 Nov 2026 19:55:47 GMT
CMD ["/bin/bash"]
# Mon, 02 Nov 2026 20:11:10 GMT
ARG version=21.0.13.0.11-1
# Mon, 02 Nov 2026 20:11:10 GMT
ARG resource_version=21.0.13.0.11
# Mon, 02 Nov 2026 20:11:10 GMT
ARG package_version=1
# Mon, 02 Nov 2026 20:11:10 GMT
# ARGS: version=21.0.13.0.11-1 resource_version=21.0.13.0.11 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 02 Nov 2026 20:11:10 GMT
ENV LANG=C.UTF-8
# Mon, 02 Nov 2026 20:11:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Tue, 03 Nov 2026 23:15:36 GMT
RUN yum install -y tar which gzip # TODO remove # buildkit
# Tue, 03 Nov 2026 23:15:38 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Tue, 03 Nov 2026 23:15:38 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 03 Nov 2026 23:15:38 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 03 Nov 2026 23:15:38 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 03 Nov 2026 23:15:38 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 03 Nov 2026 23:15:38 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 03 Nov 2026 23:15:38 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 03 Nov 2026 23:15:38 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 03 Nov 2026 23:15:39 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 03 Nov 2026 23:15:39 GMT
ARG USER_HOME_DIR=/root
# Tue, 03 Nov 2026 23:15:39 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 03 Nov 2026 23:15:39 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 03 Nov 2026 23:15:39 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:c1eee8f81fa5e953bb6eab0ff6f612967f0ef8b1dc9fac3cb2319b1021f7a245`  
		Last Modified: Sat, 31 Oct 2026 02:35:03 GMT  
		Size: 53.5 MB (53456123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8bd08fd180f162c125ccf9c1674915d47bb6e31bd116c345a8c055d06e15049`  
		Last Modified: Mon, 02 Nov 2026 20:11:33 GMT  
		Size: 169.0 MB (169018987 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcf421ae6edf92a8dc5fa72c5ea1171c0545691af8297d230daed20aaa8eb38b`  
		Last Modified: Tue, 03 Nov 2026 23:16:02 GMT  
		Size: 158.7 MB (158720503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a70029581ca50b1340c6a2e9ae5297950ba9728073a90ce4cff6fd744985d635`  
		Last Modified: Tue, 03 Nov 2026 23:15:58 GMT  
		Size: 13.8 MB (13772742 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a5d81de445a5bed17f12269299046e276f9052028bf1f9bc9ac8bc917e5a02b`  
		Last Modified: Tue, 03 Nov 2026 23:15:58 GMT  
		Size: 10.1 MB (10058972 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9301c73b38d343a4a78283e82968c70aeba2a9eb7e4eeb7ffcda444d7ed9b3a`  
		Last Modified: Tue, 03 Nov 2026 23:15:57 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8b67b8b2c18d6bc9cbf67ef7b63719e18e12c3be4d2ac2dd86809a97629c97c`  
		Last Modified: Tue, 03 Nov 2026 23:15:59 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-21-al2023` - unknown; unknown

```console
$ docker pull maven@sha256:65bc109c5302c3aa37119c61e9d639613aa3d21cbca4b875122cf5cac4aa47e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6271481 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d9fe346179263149cc70f70f65a28bdacd25e3a14ad2901b77120914bcd5bb0`

```dockerfile
```

-	Layers:
	-	`sha256:a3b7320d69c6ec46dec7a50bb33af41e2825be8759027c4a973b3ec1307a9b0f`  
		Last Modified: Tue, 03 Nov 2026 23:15:58 GMT  
		Size: 6.3 MB (6253994 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:73f835ff4198811389f741cb66fd20380b91f72b77565964db276f8096a446bf`  
		Last Modified: Tue, 03 Nov 2026 23:15:58 GMT  
		Size: 17.5 KB (17487 bytes)  
		MIME: application/vnd.in-toto+json
