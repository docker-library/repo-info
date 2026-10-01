## `maven:3-amazoncorretto-21`

```console
$ docker pull maven@sha256:baa0f210ebac9946b4bb94cd4ed033cc7f5d046f4c8d5cefc87a0578ed3a3b0e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-21` - linux; amd64

```console
$ docker pull maven@sha256:6896ae623fa5a1b9da9336aa542b742a9e966eea6b742e0835222571a0b849a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **396.2 MB (396231171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9c14752528b0e1938988e95c2de84417c6424bea1b5aa91a3b820964076462a`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 28 Sep 2026 19:59:36 GMT
COPY /rootfs/ / # buildkit
# Mon, 28 Sep 2026 19:59:36 GMT
CMD ["/bin/bash"]
# Mon, 28 Sep 2026 20:14:23 GMT
ARG version=21.0.12.12-1
# Mon, 28 Sep 2026 20:14:23 GMT
ARG package_version=1
# Mon, 28 Sep 2026 20:14:23 GMT
# ARGS: version=21.0.12.12-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 28 Sep 2026 20:14:23 GMT
ENV LANG=C.UTF-8
# Mon, 28 Sep 2026 20:14:23 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Thu, 01 Oct 2026 20:11:55 GMT
RUN yum install -y tar which gzip # TODO remove # buildkit
# Thu, 01 Oct 2026 20:11:57 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Thu, 01 Oct 2026 20:11:57 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 01 Oct 2026 20:11:57 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 01 Oct 2026 20:11:57 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 01 Oct 2026 20:11:57 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 01 Oct 2026 20:11:57 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 01 Oct 2026 20:11:57 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 01 Oct 2026 20:11:57 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 01 Oct 2026 20:11:57 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 01 Oct 2026 20:11:57 GMT
ARG USER_HOME_DIR=/root
# Thu, 01 Oct 2026 20:11:57 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 01 Oct 2026 20:11:57 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 01 Oct 2026 20:11:57 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:3ee87b1055c51d2ac7dc8988b8fcd770985201b17d5a14a7907e4b854064f5ca`  
		Last Modified: Sat, 19 Sep 2026 02:22:41 GMT  
		Size: 54.6 MB (54629827 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6276e101fcea16b2382c692d72d82fd032ba00e7d50c18a8e8b683e36787f10a`  
		Last Modified: Mon, 28 Sep 2026 20:14:45 GMT  
		Size: 170.4 MB (170443738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e470efbb29e34228cbe9ee3b1f2b25aa89f054bc7f580438a02b7a294d938d65`  
		Last Modified: Thu, 01 Oct 2026 20:12:17 GMT  
		Size: 147.6 MB (147572226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b828848eff3e2acfe81f70162fde5d862f66061df69a5a08e76f8275d49fb13`  
		Last Modified: Thu, 01 Oct 2026 20:12:15 GMT  
		Size: 13.5 MB (13525361 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77c385c25f5f0875d85362cf9c7c90098af9d68c480e21087bea09c1cbc6fd8a`  
		Last Modified: Thu, 01 Oct 2026 20:12:15 GMT  
		Size: 10.1 MB (10059015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe7cb9a8256b4f5e957d769a058735bd1eda289193cc70777cc579711f9ce67c`  
		Last Modified: Thu, 01 Oct 2026 20:12:14 GMT  
		Size: 847.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9d76f6e7805a00751e4d48063e044afc9824b0af5633f5a4ebb5694a6163c37`  
		Last Modified: Thu, 01 Oct 2026 20:12:15 GMT  
		Size: 157.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-21` - unknown; unknown

```console
$ docker pull maven@sha256:efc574d32cb92d10d8831f021b6294ea4a396d773af77db1079170ba97d5a5ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6271661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e1484b813f4c521f32d77075b0f24b484d9e01255949252c6a9386076385fe3`

```dockerfile
```

-	Layers:
	-	`sha256:069e0adb069d993c203148b2dab80b6200b4638530a8a1ce71f4072df89e15e7`  
		Last Modified: Thu, 01 Oct 2026 20:12:14 GMT  
		Size: 6.3 MB (6254358 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c6412a00c7dc78c92d347d5f6761c9494391c600f7e99ec50ef2ff0314a4b9d4`  
		Last Modified: Thu, 01 Oct 2026 20:12:14 GMT  
		Size: 17.3 KB (17303 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-21` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:3719af68eb623dc1068f2f096384ad837d452c1e17146c0e2c5dab7929917a67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **392.1 MB (392084989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1226ff72459b6ee5ab2a0ce094395b280079e8dccba5162671b81b9b88683342`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 28 Sep 2026 19:59:15 GMT
COPY /rootfs/ / # buildkit
# Mon, 28 Sep 2026 19:59:15 GMT
CMD ["/bin/bash"]
# Mon, 28 Sep 2026 20:14:14 GMT
ARG version=21.0.12.12-1
# Mon, 28 Sep 2026 20:14:14 GMT
ARG package_version=1
# Mon, 28 Sep 2026 20:14:14 GMT
# ARGS: version=21.0.12.12-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 28 Sep 2026 20:14:14 GMT
ENV LANG=C.UTF-8
# Mon, 28 Sep 2026 20:14:14 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
# Thu, 01 Oct 2026 20:11:40 GMT
RUN yum install -y tar which gzip # TODO remove # buildkit
# Thu, 01 Oct 2026 20:11:42 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Thu, 01 Oct 2026 20:11:42 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 01 Oct 2026 20:11:42 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 01 Oct 2026 20:11:42 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 01 Oct 2026 20:11:42 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 01 Oct 2026 20:11:42 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 01 Oct 2026 20:11:42 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 01 Oct 2026 20:11:42 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 01 Oct 2026 20:11:42 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 01 Oct 2026 20:11:42 GMT
ARG USER_HOME_DIR=/root
# Thu, 01 Oct 2026 20:11:42 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 01 Oct 2026 20:11:42 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 01 Oct 2026 20:11:42 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:f009e1877a8ba7c389c4ac710ae4817f0017fbb8f3bb9e42058d4d18753a3319`  
		Last Modified: Sat, 19 Sep 2026 02:00:18 GMT  
		Size: 53.5 MB (53497787 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22f43cd5000810c2bac413d5deb5c95086aaeb30eab21e01ae69fdc61ebfbfd1`  
		Last Modified: Mon, 28 Sep 2026 20:14:38 GMT  
		Size: 168.7 MB (168715995 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be73fd9208af9636e139f730a5a77bc373cb96a1a8809c13254943f1675f924c`  
		Last Modified: Thu, 01 Oct 2026 20:12:04 GMT  
		Size: 146.0 MB (146041444 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d6e13b3f68b658b07f5597dfd6a5ada46afe141c452c7b8a877d021458dd9d6`  
		Last Modified: Thu, 01 Oct 2026 20:12:02 GMT  
		Size: 13.8 MB (13769758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:674628cde5c77bafa42767d94e8da24fbc7d36fff035627cdac6b25b9e37cc76`  
		Last Modified: Thu, 01 Oct 2026 20:12:01 GMT  
		Size: 10.1 MB (10059001 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:552a5e8de636e7352fc9977885ee1a7d399ee6e39f69f1e31c1090ab34943d5c`  
		Last Modified: Thu, 01 Oct 2026 20:12:01 GMT  
		Size: 847.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2400f4a4b7acb29413eea2dbd5b93bbc0533226e0f012340c2fc983e247ea1c3`  
		Last Modified: Thu, 01 Oct 2026 20:12:02 GMT  
		Size: 157.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-21` - unknown; unknown

```console
$ docker pull maven@sha256:c443b5e9707579ebe757948a444d21f6ab887bdc12b1d70d683922eff12f400d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6270815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b136e3d3f2864968409cb6c0381eb2edd32e2539012f26e1457f0df7bb0c761`

```dockerfile
```

-	Layers:
	-	`sha256:14afa611c892d316b3f60aec1733419ad863cdf65176344e23b471e76422bb47`  
		Last Modified: Thu, 01 Oct 2026 20:12:01 GMT  
		Size: 6.3 MB (6253328 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fae3e56637ce9acdc5073ed969d53199c3223c58fdcfe2bf01d222faeb989deb`  
		Last Modified: Thu, 01 Oct 2026 20:12:00 GMT  
		Size: 17.5 KB (17487 bytes)  
		MIME: application/vnd.in-toto+json
