## `maven:3-amazoncorretto-8-al2023`

```console
$ docker pull maven@sha256:01403b240b54d6b22110b59176fb5a9f3a4aaa11e5661cbedbacb774786fb6ad
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-8-al2023` - linux; amd64

```console
$ docker pull maven@sha256:0a6b65533639e985a2d28c8950e99fe036a5f6b5bb0746ad736f3ed42bc25787
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **351.1 MB (351106293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:732c1656afa2a51c155466ff5fedb4bfd0ec60d18313b9a432ddb339797b4833`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 23 Oct 2026 00:41:03 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:41:03 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 01:09:12 GMT
ARG version=1.8.0_504.b05-1
# Fri, 23 Oct 2026 01:09:12 GMT
# ARGS: version=1.8.0_504.b05-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 23 Oct 2026 01:09:12 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 01:09:12 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
# Fri, 23 Oct 2026 02:12:15 GMT
RUN yum install -y tar which gzip # TODO remove # buildkit
# Fri, 23 Oct 2026 02:12:16 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Fri, 23 Oct 2026 02:12:16 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 23 Oct 2026 02:12:16 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 23 Oct 2026 02:12:16 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 23 Oct 2026 02:12:16 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 23 Oct 2026 02:12:16 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 23 Oct 2026 02:12:16 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 23 Oct 2026 02:12:16 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 23 Oct 2026 02:12:16 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 23 Oct 2026 02:12:16 GMT
ARG USER_HOME_DIR=/root
# Fri, 23 Oct 2026 02:12:16 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 23 Oct 2026 02:12:16 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 23 Oct 2026 02:12:16 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:da3e7a9e0d7ce8bd2e34f464f7fc47c97dde7880b26078690ed76ef5809d8b69`  
		Last Modified: Thu, 22 Oct 2026 01:38:41 GMT  
		Size: 54.6 MB (54648920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45275d094db56efe377be53d0900de193deb6be1cfb9954a0f4ecf75eebd5bef`  
		Last Modified: Fri, 23 Oct 2026 01:09:29 GMT  
		Size: 118.1 MB (118071490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b3abb5530d465fc0f5448d3521bfcf8b440fcae903ca503ceafacf2f80ead3e`  
		Last Modified: Fri, 23 Oct 2026 02:12:35 GMT  
		Size: 154.8 MB (154817132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0235072a7ac1af324d8fe1b544799f954a56fe8278f9afe271651e6514524b31`  
		Last Modified: Fri, 23 Oct 2026 02:12:32 GMT  
		Size: 13.5 MB (13508732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b70f385ca727c9ee35c60ca5e385561f03958e56269896077de471a08659d3e`  
		Last Modified: Fri, 23 Oct 2026 02:12:32 GMT  
		Size: 10.1 MB (10059011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46603a96bca7ff29e6b0834a63cf1f104ade8e5d7fd1e5a441c6677640a2ce89`  
		Last Modified: Fri, 23 Oct 2026 02:12:32 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3479ed18d43df786c8d8c493d130200bb9e6a0166741564530e5fd8ae73b268`  
		Last Modified: Fri, 23 Oct 2026 02:12:33 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-8-al2023` - unknown; unknown

```console
$ docker pull maven@sha256:b037e2a20db3e23a05fc929391cb9b961862552624bdb2dfbb237f38c64c6b03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6645648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a95f5bab4af97ca9ce3ff245a783d02f2f44823483b42380fc2834736aaf5a42`

```dockerfile
```

-	Layers:
	-	`sha256:93ccb155d23726a7f4bc73b4c54aa1fc9de1ff6dbdfede2a53015dc094e9ea1e`  
		Last Modified: Fri, 23 Oct 2026 02:12:32 GMT  
		Size: 6.6 MB (6628355 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3e4226566f698dd0d3ddab5f2e6efdaac93cb8daba68f1d98aaf0d6ee880e972`  
		Last Modified: Fri, 23 Oct 2026 02:12:31 GMT  
		Size: 17.3 KB (17293 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-8-al2023` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:1c0966340729037f5b36a6c4b4b671f675769aa8eb35ed3dded49cd791228c9b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **348.2 MB (348228585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eeba86aa79a594c61a481fc04a033b76d6b09ca37dcf0d483bec18fefec7da78`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 23 Oct 2026 00:40:43 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:40:43 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 01:09:05 GMT
ARG version=1.8.0_504.b05-1
# Fri, 23 Oct 2026 01:09:05 GMT
# ARGS: version=1.8.0_504.b05-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 23 Oct 2026 01:09:05 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 01:09:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
# Fri, 23 Oct 2026 02:12:34 GMT
RUN yum install -y tar which gzip # TODO remove # buildkit
# Fri, 23 Oct 2026 02:12:36 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Fri, 23 Oct 2026 02:12:36 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 23 Oct 2026 02:12:36 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 23 Oct 2026 02:12:36 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 23 Oct 2026 02:12:36 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 23 Oct 2026 02:12:36 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 23 Oct 2026 02:12:36 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 23 Oct 2026 02:12:36 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 23 Oct 2026 02:12:37 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 23 Oct 2026 02:12:37 GMT
ARG USER_HOME_DIR=/root
# Fri, 23 Oct 2026 02:12:37 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 23 Oct 2026 02:12:37 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 23 Oct 2026 02:12:37 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:b9de6aa56dd75608aa129f8d7c4af23dae5b1bb2a5a2edb4e9acfd307a0af336`  
		Last Modified: Thu, 22 Oct 2026 02:52:33 GMT  
		Size: 53.5 MB (53529316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e31e577a47f6b0405a087888eadca26b60870b71c2923deb64163a04e9980d44`  
		Last Modified: Fri, 23 Oct 2026 01:09:24 GMT  
		Size: 118.0 MB (117963352 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc13bddd2cc777e7cecfaf0f95b7f87446d0944f99c1510b61591270606164b5`  
		Last Modified: Fri, 23 Oct 2026 02:12:58 GMT  
		Size: 152.9 MB (152925992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0320a0744a0e5ac1540df9918ab90e8b19b57d03b7705acbbb17b9b1ece7a5ed`  
		Last Modified: Fri, 23 Oct 2026 02:12:55 GMT  
		Size: 13.7 MB (13749901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0baedcc46446e55b0382ae2b62a55ecb8d2f9deadfc96c1a41329d02f467b945`  
		Last Modified: Fri, 23 Oct 2026 02:12:55 GMT  
		Size: 10.1 MB (10059015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f479abef6e3a3f3f41ebad14d1b52081c153f85ba217664cdd7550d995b3509`  
		Last Modified: Fri, 23 Oct 2026 02:12:55 GMT  
		Size: 852.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:245f7d39af41c48006c9d7be263a26301d03969a2512100c061dac7fb8e18653`  
		Last Modified: Fri, 23 Oct 2026 02:12:56 GMT  
		Size: 157.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-8-al2023` - unknown; unknown

```console
$ docker pull maven@sha256:76ee9f8406a2f30f123400900f1829cdd907906b06e09d7bff4c534abf061e24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6646120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:688cf07c3021390de99231c7136fe89382007719e8ba7ceca05cb4b02955694a`

```dockerfile
```

-	Layers:
	-	`sha256:8f32b778d18af7997f9586f428ab3f89a252b7940b27328eae7772e51500f355`  
		Last Modified: Fri, 23 Oct 2026 02:12:55 GMT  
		Size: 6.6 MB (6628645 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c1b01c9654f794dde77a341168da5417b7a5789d67366e42798a44492e34895b`  
		Last Modified: Fri, 23 Oct 2026 02:12:54 GMT  
		Size: 17.5 KB (17475 bytes)  
		MIME: application/vnd.in-toto+json
