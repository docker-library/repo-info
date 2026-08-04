## `maven:amazoncorretto`

```console
$ docker pull maven@sha256:67dc73294f72be49d5fc232fa3d4b9dc9ad4f8e670d5c83d23404776ececd8ba
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:amazoncorretto` - linux; amd64

```console
$ docker pull maven@sha256:44c291b35c6c864ef31a1cf22da996b8e3eebd5ba8bc84139fca0c096f23a72c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **399.8 MB (399841933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7d27e9e8f4b5789ac4185f00af1e84c778f92af96c714ec08b85f9b97c08894`
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
# Tue, 04 Aug 2026 03:42:26 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Tue, 04 Aug 2026 03:42:26 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 04 Aug 2026 03:42:26 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 04 Aug 2026 03:42:26 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 04 Aug 2026 03:42:26 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 04 Aug 2026 03:42:26 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 04 Aug 2026 03:42:26 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 04 Aug 2026 03:42:26 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 04 Aug 2026 03:42:26 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 04 Aug 2026 03:42:26 GMT
ARG USER_HOME_DIR=/root
# Tue, 04 Aug 2026 03:42:26 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 04 Aug 2026 03:42:26 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 04 Aug 2026 03:42:26 GMT
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
	-	`sha256:c064077ac8556b588fbe064fa91af5baf2e02ffca53b935dcb52b410e07f4a6f`  
		Last Modified: Tue, 04 Aug 2026 03:42:47 GMT  
		Size: 146.4 MB (146432470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6cdb5d785b0ec101fd7639ace91b2e9fc249a3d8a31bcfd239c93cd7d49628d`  
		Last Modified: Tue, 04 Aug 2026 03:42:44 GMT  
		Size: 9.4 MB (9359973 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:809c9904a7247af2d8fc4d26c87015e3f9143c1d44be40ec3752a204bce1c77b`  
		Last Modified: Tue, 04 Aug 2026 03:42:43 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:896e3a81b8adfa771ca229e9fe2a70bfbbd503987f51eb6df3f39f95f5a34137`  
		Last Modified: Tue, 04 Aug 2026 03:42:43 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:amazoncorretto` - unknown; unknown

```console
$ docker pull maven@sha256:200e3ff61965b198368ed2d5a653b7981c0b92a32b7a9bc08eb749ef302b6ebd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6238601 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:520086ba024a1580c74c8622ee98c5c2cfbdf29a651cc290342438d90755243a`

```dockerfile
```

-	Layers:
	-	`sha256:3b938559ee788a9ece5f8ee1084d82242e4fa11f5536821d36d31ea52de3bfd3`  
		Last Modified: Tue, 04 Aug 2026 03:42:44 GMT  
		Size: 6.2 MB (6222891 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6679406b6d10a73f10b4669dda80d543a2c1ad4859917790d543ada3f1eea851`  
		Last Modified: Tue, 04 Aug 2026 03:42:43 GMT  
		Size: 15.7 KB (15710 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:amazoncorretto` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:ec5adfe15c8af8800f46085bfc243a3e9f26cf25a96f6038f8c02e451e94ecbb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **395.2 MB (395168661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6cc2b40ea6f28a84ad979038eaa01ed51bfe146cac43f8da627eb6f5e55f12c`
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
# Tue, 04 Aug 2026 03:42:30 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Tue, 04 Aug 2026 03:42:30 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 04 Aug 2026 03:42:30 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 04 Aug 2026 03:42:30 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 04 Aug 2026 03:42:30 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 04 Aug 2026 03:42:30 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 04 Aug 2026 03:42:30 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 04 Aug 2026 03:42:30 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 04 Aug 2026 03:42:31 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 04 Aug 2026 03:42:31 GMT
ARG USER_HOME_DIR=/root
# Tue, 04 Aug 2026 03:42:31 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 04 Aug 2026 03:42:31 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 04 Aug 2026 03:42:31 GMT
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
	-	`sha256:61c8afcd9b2ed6d43df0555ee7a608f33fe6f33833c9a8f3906bb6e015f1e711`  
		Last Modified: Tue, 04 Aug 2026 03:42:52 GMT  
		Size: 145.0 MB (144979464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:074949c1737217fd10f94d4b78f471c78a0e5ff588ab0a6a185ffeaa273ce932`  
		Last Modified: Tue, 04 Aug 2026 03:42:49 GMT  
		Size: 9.4 MB (9359973 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de2fea9d655ef80c3c074931e3fd43be134b699547e52f8a5b34e6a441a7c356`  
		Last Modified: Tue, 04 Aug 2026 03:42:49 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec383d63fe273508680361939714d5bea3dd419f4bf20499f8d0cecbb71b19d2`  
		Last Modified: Tue, 04 Aug 2026 03:42:48 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:amazoncorretto` - unknown; unknown

```console
$ docker pull maven@sha256:826cd8840143d497409380daff6e59152feecd4e8e28aeb278ad52ce66740fb0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6237774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e49f02459418f00e5e16f0b3a49180097566c0c7b5f843a25db6be598a6fc645`

```dockerfile
```

-	Layers:
	-	`sha256:6f9e044ad7b83cf0bd2b8c4ce04eef75dcd39a703946d663e47555afd959bb7c`  
		Last Modified: Tue, 04 Aug 2026 03:42:49 GMT  
		Size: 6.2 MB (6221884 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9e3e605946e2eb1e7935cae68e0437c8b0d5a0ac57995ea4e39a989f30286969`  
		Last Modified: Tue, 04 Aug 2026 03:42:49 GMT  
		Size: 15.9 KB (15890 bytes)  
		MIME: application/vnd.in-toto+json
