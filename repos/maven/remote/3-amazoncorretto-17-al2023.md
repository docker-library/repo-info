## `maven:3-amazoncorretto-17-al2023`

```console
$ docker pull maven@sha256:b47c135c4878d0128b7426f9d1c989fc1c677e1bb460e9fc128d66ec3072a6e5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-17-al2023` - linux; amd64

```console
$ docker pull maven@sha256:e0484d1abf63acaa397b54e4e2bb1499a5b222e4af1c2134660b42ab7263c5b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **390.5 MB (390490103 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6f52eeae19bde5ac6fe2ba85982cea58a5cbb7a0da15e590e46889443e35f46`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 23 Oct 2026 00:41:03 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:41:03 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 18:08:31 GMT
ARG version=17.0.21.0.10-1
# Fri, 23 Oct 2026 18:08:31 GMT
ARG resource_version=17.0.21.0.10
# Fri, 23 Oct 2026 18:08:31 GMT
ARG package_version=1
# Fri, 23 Oct 2026 18:08:31 GMT
# ARGS: version=17.0.21.0.10-1 resource_version=17.0.21.0.10 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 23 Oct 2026 18:08:31 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 18:08:31 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
# Tue, 27 Oct 2026 02:18:18 GMT
RUN yum install -y tar which gzip # TODO remove # buildkit
# Tue, 27 Oct 2026 02:18:19 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Tue, 27 Oct 2026 02:18:20 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 27 Oct 2026 02:18:20 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 27 Oct 2026 02:18:20 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 27 Oct 2026 02:18:20 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 27 Oct 2026 02:18:20 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 27 Oct 2026 02:18:20 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 27 Oct 2026 02:18:20 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 27 Oct 2026 02:18:20 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 27 Oct 2026 02:18:20 GMT
ARG USER_HOME_DIR=/root
# Tue, 27 Oct 2026 02:18:20 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 27 Oct 2026 02:18:20 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 27 Oct 2026 02:18:20 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:da3e7a9e0d7ce8bd2e34f464f7fc47c97dde7880b26078690ed76ef5809d8b69`  
		Last Modified: Thu, 22 Oct 2026 01:38:41 GMT  
		Size: 54.6 MB (54648920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62c5208209ea9a86a255f1eaa0ce19a9eddf8d9c7f1f8311ee5e16b1af43f12d`  
		Last Modified: Fri, 23 Oct 2026 18:08:51 GMT  
		Size: 157.4 MB (157424961 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e42dafb8ecfce7a7d7ce200df89639fb7df184cba244c8709f5a0ca6539f179`  
		Last Modified: Tue, 27 Oct 2026 02:18:39 GMT  
		Size: 154.8 MB (154826309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b15c2ebc0a8b4c1c0698c984394585392e486a649010fa538a8a0cc651abfa0c`  
		Last Modified: Tue, 27 Oct 2026 02:18:36 GMT  
		Size: 13.5 MB (13529888 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53d6a1a9ec677ea5b045c106edaff51e2b44a205d831add6222bceed94033749`  
		Last Modified: Tue, 27 Oct 2026 02:18:36 GMT  
		Size: 10.1 MB (10059013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:876ac21f09e63b38a7dfc340277e9eb3419b7dbb8168cb7f4151deda855f54bd`  
		Last Modified: Tue, 27 Oct 2026 02:18:35 GMT  
		Size: 854.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ffb282dedc01c4240e5bd25686610833d3cf198fe942becf535293f0fe8e487`  
		Last Modified: Tue, 27 Oct 2026 02:18:37 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-17-al2023` - unknown; unknown

```console
$ docker pull maven@sha256:e8d93c00f8f579278c9f9bc22e33d303adfeb77894165dfec0ba638fbb0e8eda
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6269241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f48f103b6edbe33229af143ca3be36c967a75c9dd335f44f106cbe59ab76af1`

```dockerfile
```

-	Layers:
	-	`sha256:08d3722565bd03b848fa4ded0b11d33831f4e2d24407e8d1e5d6cf1db45b94d9`  
		Last Modified: Tue, 27 Oct 2026 02:18:36 GMT  
		Size: 6.3 MB (6251938 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:38cb72ae90656d88717b08b9f25f148f1ac78560d852adfa2417986914f10841`  
		Last Modified: Tue, 27 Oct 2026 02:18:35 GMT  
		Size: 17.3 KB (17303 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-17-al2023` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:fcf3b6ab7a23e301d835993c9d13062a63fb0599586143815e60f67fa16f97f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **386.6 MB (386577832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d76a6bc51170d1f1c6ef1d2f9edfafcaa4eea04ae8b7932c9614e56c4d24c11`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 23 Oct 2026 00:40:43 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:40:43 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 18:08:29 GMT
ARG version=17.0.21.0.10-1
# Fri, 23 Oct 2026 18:08:29 GMT
ARG resource_version=17.0.21.0.10
# Fri, 23 Oct 2026 18:08:29 GMT
ARG package_version=1
# Fri, 23 Oct 2026 18:08:29 GMT
# ARGS: version=17.0.21.0.10-1 resource_version=17.0.21.0.10 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 23 Oct 2026 18:08:29 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 18:08:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
# Tue, 27 Oct 2026 02:15:55 GMT
RUN yum install -y tar which gzip # TODO remove # buildkit
# Tue, 27 Oct 2026 02:15:57 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Tue, 27 Oct 2026 02:15:57 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Tue, 27 Oct 2026 02:15:57 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Tue, 27 Oct 2026 02:15:57 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Tue, 27 Oct 2026 02:15:57 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Tue, 27 Oct 2026 02:15:57 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 27 Oct 2026 02:15:57 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Tue, 27 Oct 2026 02:15:58 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Tue, 27 Oct 2026 02:15:58 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Tue, 27 Oct 2026 02:15:58 GMT
ARG USER_HOME_DIR=/root
# Tue, 27 Oct 2026 02:15:58 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 27 Oct 2026 02:15:58 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 27 Oct 2026 02:15:58 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:b9de6aa56dd75608aa129f8d7c4af23dae5b1bb2a5a2edb4e9acfd307a0af336`  
		Last Modified: Thu, 22 Oct 2026 02:52:33 GMT  
		Size: 53.5 MB (53529316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52a510a982617e16fea7c5332d3e2f68e230e2192abecc0c0de21e3ae09f4ee0`  
		Last Modified: Fri, 23 Oct 2026 18:08:53 GMT  
		Size: 156.3 MB (156283977 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6143b490c5caefd4194969122e015198331d3f726cc75bc3c2a6f59dd6a7b3e`  
		Last Modified: Tue, 27 Oct 2026 02:16:19 GMT  
		Size: 152.9 MB (152932605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:162d1f6eafe6aeebbc7c4538b59c274393ca1a0d5d65f71a4b94db3217aefaff`  
		Last Modified: Tue, 27 Oct 2026 02:16:16 GMT  
		Size: 13.8 MB (13771904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:580178a540547191b384b2e377296f50f7be33ff63bc107025d44d45dceab0a7`  
		Last Modified: Tue, 27 Oct 2026 02:16:16 GMT  
		Size: 10.1 MB (10059018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5aca09c791cb5daa5740f534c4d1bfb0d3466724f6589c730db805913209acf`  
		Last Modified: Tue, 27 Oct 2026 02:16:16 GMT  
		Size: 853.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:890902d19db9a1253f2dfe766b357cba263705e6768b849ff4a5eececa2f384f`  
		Last Modified: Tue, 27 Oct 2026 02:16:17 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-17-al2023` - unknown; unknown

```console
$ docker pull maven@sha256:f0cc9af25722a74cf88f4e4cc8cbcc8d2186621427b2f6c5367ce7e4d7710800
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6268392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b20408477309eb581e77f3fadf883a5e85f1c5a7659c7cc2d4b50a42d89aad28`

```dockerfile
```

-	Layers:
	-	`sha256:1077222eb8e60534d158218dcf8e6eacfe173837615c4315c2fe3c700eeee7b3`  
		Last Modified: Tue, 27 Oct 2026 02:16:16 GMT  
		Size: 6.3 MB (6250905 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0403e1ce7574e3f902fc0bafacdf5df473dd2f714417656d8c2898d523ab0a4f`  
		Last Modified: Tue, 27 Oct 2026 02:16:16 GMT  
		Size: 17.5 KB (17487 bytes)  
		MIME: application/vnd.in-toto+json
