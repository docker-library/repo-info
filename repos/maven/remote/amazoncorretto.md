## `maven:amazoncorretto`

```console
$ docker pull maven@sha256:5f86b45d0a9924c6b2e9bb4222be02cc4d8fa3ae7e155099a0dbd55ae23445d3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:amazoncorretto` - linux; amd64

```console
$ docker pull maven@sha256:03875c801e1d4aa081a4c2a982a0b3be262f9876db118574b9c52bc994242934
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **432.6 MB (432601235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3d9be994638086c5f028feb7ee41913f5e9de7558e3a717e6e94863b09be1cc`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 16 Nov 2026 22:28:06 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 22:28:06 GMT
CMD ["/bin/bash"]
# Tue, 17 Nov 2026 21:35:33 GMT
ARG version=27.0.1.1.4-1
# Tue, 17 Nov 2026 21:35:33 GMT
ARG resource_version=27.0.1.1.4
# Tue, 17 Nov 2026 21:35:33 GMT
ARG package_version=1
# Tue, 17 Nov 2026 21:35:33 GMT
# ARGS: version=27.0.1.1.4-1 resource_version=27.0.1.1.4 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-27-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-27-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 17 Nov 2026 21:35:33 GMT
ENV LANG=C.UTF-8
# Tue, 17 Nov 2026 21:35:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-amazon-corretto
# Tue, 17 Nov 2026 22:12:38 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Tue, 17 Nov 2026 22:12:38 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 17 Nov 2026 22:12:38 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 17 Nov 2026 22:12:38 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 17 Nov 2026 22:12:38 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 17 Nov 2026 22:12:38 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 17 Nov 2026 22:12:38 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 17 Nov 2026 22:12:38 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 17 Nov 2026 22:12:38 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 17 Nov 2026 22:12:38 GMT
ARG USER_HOME_DIR=/root
# Tue, 17 Nov 2026 22:12:38 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 17 Nov 2026 22:12:38 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 17 Nov 2026 22:12:38 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:b14c48cb507df242c2b2a0cb744a00c9498a8511d265f31337cb732917717949`  
		Last Modified: Thu, 12 Nov 2026 22:05:23 GMT  
		Size: 54.6 MB (54569293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dc48d1141cc3bde419fe9959885188cc98b88c79efcf3bb38ab7c61599a2903`  
		Last Modified: Tue, 17 Nov 2026 21:35:55 GMT  
		Size: 192.0 MB (192028623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02ab8f5b8183c52c60a3fa22e7849152eff63ea2b031cb168dbae1600f638146`  
		Last Modified: Tue, 17 Nov 2026 22:13:01 GMT  
		Size: 175.9 MB (175943292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2d4c617618e3f3386b042d93b957fcbb875abdefacf5f6a7e72cb8d9b2e3cbc`  
		Last Modified: Tue, 17 Nov 2026 22:12:57 GMT  
		Size: 10.1 MB (10059018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ba83d79329ed6f980ffcc9055b9417848b7fbc8acbfae4326b7975a56a4e459`  
		Last Modified: Tue, 17 Nov 2026 22:12:57 GMT  
		Size: 852.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c27c06128353511d8b5628d8d05f92c11275aa3f016cdc0de0267ab204bc6717`  
		Last Modified: Tue, 17 Nov 2026 22:12:57 GMT  
		Size: 157.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:amazoncorretto` - unknown; unknown

```console
$ docker pull maven@sha256:c6741b9f1f08fa9b96010c079ecc8f64bb3fc90e8e53072116e4a32f7b1a0afc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6238220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0dc0c5d8d10e70e99170566f3137d3a29620884922c41cb223829690f0b547ed`

```dockerfile
```

-	Layers:
	-	`sha256:3c3ab658fb5e2916fb4b985c962d6d67547d6ec8bea900434b9ce8adf114bf59`  
		Last Modified: Tue, 17 Nov 2026 22:12:57 GMT  
		Size: 6.2 MB (6221423 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dd0fc58ded0d8fddb2739930a160702f2e9ab7482544448983e6229bc3f54209`  
		Last Modified: Tue, 17 Nov 2026 22:12:57 GMT  
		Size: 16.8 KB (16797 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:amazoncorretto` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:e09e814f756a0e0a63a989c1a4f5538c4a937e3b88c77c5ef6af68bf72f0ae78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **427.7 MB (427748959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9c566a4b1ebe4a2401f685d468e2d791cef9aa41219af284d195fc976ff64a1`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 16 Nov 2026 22:29:21 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 22:29:21 GMT
CMD ["/bin/bash"]
# Tue, 17 Nov 2026 21:35:48 GMT
ARG version=27.0.1.1.4-1
# Tue, 17 Nov 2026 21:35:48 GMT
ARG resource_version=27.0.1.1.4
# Tue, 17 Nov 2026 21:35:48 GMT
ARG package_version=1
# Tue, 17 Nov 2026 21:35:48 GMT
# ARGS: version=27.0.1.1.4-1 resource_version=27.0.1.1.4 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-27-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-27-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 17 Nov 2026 21:35:48 GMT
ENV LANG=C.UTF-8
# Tue, 17 Nov 2026 21:35:48 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-amazon-corretto
# Tue, 17 Nov 2026 22:12:37 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Tue, 17 Nov 2026 22:12:37 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 17 Nov 2026 22:12:37 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 17 Nov 2026 22:12:37 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 17 Nov 2026 22:12:37 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 17 Nov 2026 22:12:37 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 17 Nov 2026 22:12:37 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 17 Nov 2026 22:12:37 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 17 Nov 2026 22:12:37 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 17 Nov 2026 22:12:37 GMT
ARG USER_HOME_DIR=/root
# Tue, 17 Nov 2026 22:12:37 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 17 Nov 2026 22:12:37 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 17 Nov 2026 22:12:37 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:ec15fd39d3176482c0c3086a0be29d9028611fd79d15bccd7da39e67bbfceeab`  
		Last Modified: Thu, 12 Nov 2026 22:05:26 GMT  
		Size: 53.5 MB (53453077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e805f71b8bf46b1d584a5b0485c37f42d8bd7facee703339bc20e1eb229a72a4`  
		Last Modified: Tue, 17 Nov 2026 21:36:14 GMT  
		Size: 190.2 MB (190195324 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2ef737d414ab32e04d035c0002382268b5b590fe6088df8062570329f5dab60`  
		Last Modified: Tue, 17 Nov 2026 22:13:00 GMT  
		Size: 174.0 MB (174040538 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37605a372598fdf030ab23b544d643e209cb93fadf27c26143e26f33a745e609`  
		Last Modified: Tue, 17 Nov 2026 22:12:56 GMT  
		Size: 10.1 MB (10059012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6de297b4efd9842c71446faa0d383208412b4d7761edf41f449d0f03d719e83b`  
		Last Modified: Tue, 17 Nov 2026 22:12:56 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:363b942d92bcef208a5d326f0aef5beff61d646a189048bda8630985be327d47`  
		Last Modified: Tue, 17 Nov 2026 22:12:56 GMT  
		Size: 157.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:amazoncorretto` - unknown; unknown

```console
$ docker pull maven@sha256:2272b76dbc31638b1fada95ec28cf68c31bb0924ba2b554169a74d5c738e6754
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6237456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4671d280595e8170dbadd7cfe5749074adc1e1c1d2b9bb6fabd3191f0bbeeded`

```dockerfile
```

-	Layers:
	-	`sha256:9e7626bc22a81820ad8c2cd767284c7c1c3ef60bc35fba0af0c749ad5dace969`  
		Last Modified: Tue, 17 Nov 2026 22:12:56 GMT  
		Size: 6.2 MB (6220442 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:90c53c9cdde05c853b7db723a7a89b49ab9e0fb9fe1302f8b11b326144228ba4`  
		Last Modified: Tue, 17 Nov 2026 22:12:56 GMT  
		Size: 17.0 KB (17014 bytes)  
		MIME: application/vnd.in-toto+json
