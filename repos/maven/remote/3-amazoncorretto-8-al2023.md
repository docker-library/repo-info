## `maven:3-amazoncorretto-8-al2023`

```console
$ docker pull maven@sha256:7901c3e392b70ac0b15885f09e57c089244c716d169b233e381deb3a36caf292
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-8-al2023` - linux; amd64

```console
$ docker pull maven@sha256:555e844c16715580973f23a90676a9c6b4417e13133d2ff9bd4697b017341c75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **361.4 MB (361367760 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:935441ca3446cd80de4ca7c2b403e18d4e5ac19ae99a410c9c6e2e844cad7fdd`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 16 Nov 2026 22:28:06 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 22:28:06 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 23:09:10 GMT
ARG version=1.8.0_512.b09-1
# Mon, 16 Nov 2026 23:09:10 GMT
# ARGS: version=1.8.0_512.b09-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 16 Nov 2026 23:09:10 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 23:09:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
# Tue, 17 Nov 2026 00:12:10 GMT
RUN yum install -y tar which gzip # TODO remove # buildkit
# Tue, 17 Nov 2026 00:12:12 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Tue, 17 Nov 2026 00:12:12 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 17 Nov 2026 00:12:12 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 17 Nov 2026 00:12:12 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 17 Nov 2026 00:12:12 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 17 Nov 2026 00:12:12 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 17 Nov 2026 00:12:12 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 17 Nov 2026 00:12:12 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 17 Nov 2026 00:12:12 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 17 Nov 2026 00:12:12 GMT
ARG USER_HOME_DIR=/root
# Tue, 17 Nov 2026 00:12:12 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 17 Nov 2026 00:12:12 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 17 Nov 2026 00:12:12 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:b14c48cb507df242c2b2a0cb744a00c9498a8511d265f31337cb732917717949`  
		Last Modified: Thu, 12 Nov 2026 22:05:23 GMT  
		Size: 54.6 MB (54569293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94742f6f129558b6a9a087000fce8c78bcbd04522e9041cb270a2b69bc9a9eaa`  
		Last Modified: Mon, 16 Nov 2026 23:09:28 GMT  
		Size: 118.1 MB (118117709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4da4855991a815264add34dea4a44ff9262535b39f3dfe1e12607d0dbbec1f7d`  
		Last Modified: Tue, 17 Nov 2026 00:12:33 GMT  
		Size: 165.1 MB (165113142 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4385bab421db05d1fabfe28e06afd3feb70c839a3cc0373cf29e51de97d396a0`  
		Last Modified: Tue, 17 Nov 2026 00:12:30 GMT  
		Size: 13.5 MB (13507587 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba234b85ca4a6ee02baa58b8a872c4cc6864e15f9ec073e0969c056e01a91998`  
		Last Modified: Tue, 17 Nov 2026 00:12:30 GMT  
		Size: 10.1 MB (10059019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3236889aa391f0fa7ac73ebe893c60e289fe87568c77b8ccfacdf8f573682fcc`  
		Last Modified: Tue, 17 Nov 2026 00:12:29 GMT  
		Size: 852.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca5dea49d37a6309c0c4d2d81c731ca43259ec8451724cd457c3a4ea1b2057f2`  
		Last Modified: Tue, 17 Nov 2026 00:12:31 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-8-al2023` - unknown; unknown

```console
$ docker pull maven@sha256:289297b7832a922f6b7d24dd10c6407e659f4b1564c5f45df1c5ffacf9ac20d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6646318 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c2ceea27b7281b5815ab75b5c73b0dfd29331e3423aebb063a5fb52c0b7f18f`

```dockerfile
```

-	Layers:
	-	`sha256:ba0febeb91e4c24849078445ec1173edbde4b196743b135ff606e34438bfa932`  
		Last Modified: Tue, 17 Nov 2026 00:12:30 GMT  
		Size: 6.6 MB (6629025 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a94643746d98d5576abebc3b928afeed66bd904ee60e9d1b20736dfd079aacda`  
		Last Modified: Tue, 17 Nov 2026 00:12:29 GMT  
		Size: 17.3 KB (17293 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-8-al2023` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:aa95fc7d6f7356c718ed30fd5a1c53674c1a0f196f67dd53841b2c5b2689ae22
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **358.2 MB (358240037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef798c0f60ff6ee694613e86ed9bc2700dafcd5c6ff7754b1b82b2db681b066c`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 16 Nov 2026 22:29:21 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 22:29:21 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 23:09:19 GMT
ARG version=1.8.0_512.b09-1
# Mon, 16 Nov 2026 23:09:19 GMT
# ARGS: version=1.8.0_512.b09-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 16 Nov 2026 23:09:19 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 23:09:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
# Tue, 17 Nov 2026 00:12:21 GMT
RUN yum install -y tar which gzip # TODO remove # buildkit
# Tue, 17 Nov 2026 00:12:23 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Tue, 17 Nov 2026 00:12:23 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 17 Nov 2026 00:12:23 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 17 Nov 2026 00:12:23 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 17 Nov 2026 00:12:23 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 17 Nov 2026 00:12:23 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 17 Nov 2026 00:12:23 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 17 Nov 2026 00:12:23 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 17 Nov 2026 00:12:23 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 17 Nov 2026 00:12:23 GMT
ARG USER_HOME_DIR=/root
# Tue, 17 Nov 2026 00:12:23 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 17 Nov 2026 00:12:23 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 17 Nov 2026 00:12:23 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:ec15fd39d3176482c0c3086a0be29d9028611fd79d15bccd7da39e67bbfceeab`  
		Last Modified: Thu, 12 Nov 2026 22:05:26 GMT  
		Size: 53.5 MB (53453077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:057d2ded5785acd718c6cdac540d2635205722b4cd73898ce3a3fc9982786362`  
		Last Modified: Mon, 16 Nov 2026 23:09:39 GMT  
		Size: 118.0 MB (118011685 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4eaca79e9d7dbfcf112a6eeeed024bb9d2c843b9856cbe039c7b7b2cc3ef51b7`  
		Last Modified: Tue, 17 Nov 2026 00:12:45 GMT  
		Size: 163.0 MB (162961266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd708d44a8d0d9ab573f993f36142aa63996aebd3ebcdb3682d3ce06c715eb63`  
		Last Modified: Tue, 17 Nov 2026 00:12:42 GMT  
		Size: 13.8 MB (13753981 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93fd642f5057fba0d1687fc9d2ae010e2b691d02e383b22f3e3a7404fca3ccea`  
		Last Modified: Tue, 17 Nov 2026 00:12:42 GMT  
		Size: 10.1 MB (10059022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98a0d639766a8d953c3e1cbbf4d0e744c81ae7cf318a073ada8725a245cf9211`  
		Last Modified: Tue, 17 Nov 2026 00:12:41 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f32795e123886cef2435abcf63c0022afe518303ee447368334d20d7af8b3d20`  
		Last Modified: Tue, 17 Nov 2026 00:12:42 GMT  
		Size: 156.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-8-al2023` - unknown; unknown

```console
$ docker pull maven@sha256:44241d820ad302598af5b827807f446bf2f0c368cdf47122b46ff6e6b34a58ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6646792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc39786156555cc31decc1d5e0854b11786299b234f26ce02ba2bd18e58696ef`

```dockerfile
```

-	Layers:
	-	`sha256:44974b3bb388e3259baf86bf632629dfda131a1250c34fac08dea34dace37b9f`  
		Last Modified: Tue, 17 Nov 2026 00:12:41 GMT  
		Size: 6.6 MB (6629315 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:099cecf82ff6f16cfd099ff6e9ddde662583c7bfe2d3b97f69124281f8235286`  
		Last Modified: Tue, 17 Nov 2026 00:12:41 GMT  
		Size: 17.5 KB (17477 bytes)  
		MIME: application/vnd.in-toto+json
