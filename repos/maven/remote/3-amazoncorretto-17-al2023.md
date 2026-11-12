## `maven:3-amazoncorretto-17-al2023`

```console
$ docker pull maven@sha256:69a28d3ccb20fb15dfef298dfc3790b44d8b72a403ec10b7e3181efe6ec32f47
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-17-al2023` - linux; amd64

```console
$ docker pull maven@sha256:d1a2f8b7557b3b7adf9b9bc7af4f0141bb80a39cd59ebcbb0cb2104bb9464e0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **396.2 MB (396243459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8915972519df3134bcbf813cfee35c1eed8e86f9d0faad273ccaae0db934385d`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 05 Nov 2026 18:52:15 GMT
COPY /rootfs/ / # buildkit
# Thu, 05 Nov 2026 18:52:15 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 19:59:19 GMT
ARG version=17.0.21.0.11-1
# Thu, 05 Nov 2026 19:59:19 GMT
ARG resource_version=17.0.21.0.11
# Thu, 05 Nov 2026 19:59:19 GMT
ARG package_version=1
# Thu, 05 Nov 2026 19:59:19 GMT
# ARGS: version=17.0.21.0.11-1 resource_version=17.0.21.0.11 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 05 Nov 2026 19:59:19 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:59:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
# Thu, 12 Nov 2026 02:16:40 GMT
RUN yum install -y tar which gzip # TODO remove # buildkit
# Thu, 12 Nov 2026 02:16:42 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Thu, 12 Nov 2026 02:16:42 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 12 Nov 2026 02:16:42 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 12 Nov 2026 02:16:42 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 12 Nov 2026 02:16:42 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 12 Nov 2026 02:16:42 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 12 Nov 2026 02:16:42 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 12 Nov 2026 02:16:42 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 12 Nov 2026 02:16:42 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 12 Nov 2026 02:16:42 GMT
ARG USER_HOME_DIR=/root
# Thu, 12 Nov 2026 02:16:42 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 12 Nov 2026 02:16:42 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 12 Nov 2026 02:16:42 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:36d0e51e1ea56325505d833f7d87567b6720c396e9a5742de0f157b063545163`  
		Last Modified: Sat, 31 Oct 2026 02:35:05 GMT  
		Size: 54.6 MB (54569615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:249fe1f1aa0ad3732a040d863e872ca4873ccf20d111100e5bb3a876c5d66a9d`  
		Last Modified: Thu, 05 Nov 2026 19:59:39 GMT  
		Size: 157.4 MB (157424999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f24269534af7ea2576e8dd9f27f36737358796cf6aebe5c62c3a7bb1206029f`  
		Last Modified: Thu, 12 Nov 2026 02:17:03 GMT  
		Size: 160.7 MB (160654991 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b5016bf8fd893f12490b0a47559b49f9c20853d958de543a46e21a4cdadf5d2`  
		Last Modified: Thu, 12 Nov 2026 02:17:00 GMT  
		Size: 13.5 MB (13533837 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8205a0813c9d11c00144419b2b9a7537c81c18b0e4b431877197b578da06290`  
		Last Modified: Thu, 12 Nov 2026 02:16:59 GMT  
		Size: 10.1 MB (10059011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4327e40e2d4c5bd44fbcff4bf6e5dd13977d23f44c83d711e3babb277016c0fd`  
		Last Modified: Thu, 12 Nov 2026 02:16:58 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89dbee9ec1fce9d561c45989576103e5f23aa47401524d0c347047acd33fa1e5`  
		Last Modified: Thu, 12 Nov 2026 02:17:00 GMT  
		Size: 157.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-17-al2023` - unknown; unknown

```console
$ docker pull maven@sha256:779ad84fbb6317eac227cf14d442a921c1a49d9d460c17ea60195f34cf39b2c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6269900 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3843c2d17170a75a66bc2babab2b83f564fdc4bb4c8a8c99f689402673854251`

```dockerfile
```

-	Layers:
	-	`sha256:77f221b5c4caf5947737933f01e39567339d799824f0fad1225a92e70f28d70f`  
		Last Modified: Thu, 12 Nov 2026 02:16:59 GMT  
		Size: 6.3 MB (6252598 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:166393709957b038d6acfa255ddbdc48352e612772a18b3db4d1bc06fcdd0b19`  
		Last Modified: Thu, 12 Nov 2026 02:16:59 GMT  
		Size: 17.3 KB (17302 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-17-al2023` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:3cf90d407d26c0ac16a932f49c05945bc981ee2cda7e506061769f653a1ba728
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **392.3 MB (392303493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8076e234d99445c072a3f943d7b6e9927fae039082ab557f10460761aa025f1c`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 05 Nov 2026 18:48:16 GMT
COPY /rootfs/ / # buildkit
# Thu, 05 Nov 2026 18:48:16 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 20:15:54 GMT
ARG version=17.0.21.0.11-1
# Thu, 05 Nov 2026 20:15:54 GMT
ARG resource_version=17.0.21.0.11
# Thu, 05 Nov 2026 20:15:54 GMT
ARG package_version=1
# Thu, 05 Nov 2026 20:15:54 GMT
# ARGS: version=17.0.21.0.11-1 resource_version=17.0.21.0.11 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 05 Nov 2026 20:15:54 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 20:15:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
# Thu, 12 Nov 2026 02:16:42 GMT
RUN yum install -y tar which gzip # TODO remove # buildkit
# Thu, 12 Nov 2026 02:16:43 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Thu, 12 Nov 2026 02:16:43 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 12 Nov 2026 02:16:43 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 12 Nov 2026 02:16:43 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 12 Nov 2026 02:16:43 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 12 Nov 2026 02:16:43 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 12 Nov 2026 02:16:43 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 12 Nov 2026 02:16:44 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 12 Nov 2026 02:16:44 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 12 Nov 2026 02:16:44 GMT
ARG USER_HOME_DIR=/root
# Thu, 12 Nov 2026 02:16:44 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 12 Nov 2026 02:16:44 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 12 Nov 2026 02:16:44 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:c1eee8f81fa5e953bb6eab0ff6f612967f0ef8b1dc9fac3cb2319b1021f7a245`  
		Last Modified: Sat, 31 Oct 2026 02:35:03 GMT  
		Size: 53.5 MB (53456123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f5e572b3ce80875f9b5e4677a0848e92223659970767dabbe9908c53ee27e1d`  
		Last Modified: Thu, 05 Nov 2026 20:16:16 GMT  
		Size: 156.3 MB (156294790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bda136d3cf984a12f7d0dd5c779abc13bab583fb0c39530dc6e57e486573c1b5`  
		Last Modified: Thu, 12 Nov 2026 02:17:06 GMT  
		Size: 158.7 MB (158720180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fc3a9498c7082e98c44cb9844daf64c6990c532fe29503ed7c54cd1fd99430e`  
		Last Modified: Thu, 12 Nov 2026 02:17:03 GMT  
		Size: 13.8 MB (13772386 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67969fcf9d9c02b74c02149b03663d92535ac7cec232e756263a54588fdfe367`  
		Last Modified: Thu, 12 Nov 2026 02:17:03 GMT  
		Size: 10.1 MB (10059005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a276d0fd540cf52db3060e733688b4c0e8bdbe465935a7602442deadc6131b1`  
		Last Modified: Thu, 12 Nov 2026 02:17:02 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58610d42b688fb37b4fbea380c7735c74e19200a5a97e224014a99253ab81db7`  
		Last Modified: Thu, 12 Nov 2026 02:17:03 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-17-al2023` - unknown; unknown

```console
$ docker pull maven@sha256:35aebda266c3211656185284bec93013b586c0d430eff1575d7ea5cd32722887
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6269052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e09b952c0a88d682793dd1d1f59c613a7cbd2c313288ce120e8636907026359`

```dockerfile
```

-	Layers:
	-	`sha256:8e9d60891f2966a8eda56bb8c40e5cc62ba636518ba7cd421f565aa41362ccf4`  
		Last Modified: Thu, 12 Nov 2026 02:17:03 GMT  
		Size: 6.3 MB (6251565 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aef7905e583f04e457373567ce9a00ba35cca65769de0c29c3467a67a07475e0`  
		Last Modified: Thu, 12 Nov 2026 02:17:02 GMT  
		Size: 17.5 KB (17487 bytes)  
		MIME: application/vnd.in-toto+json
