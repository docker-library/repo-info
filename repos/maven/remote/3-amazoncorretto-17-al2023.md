## `maven:3-amazoncorretto-17-al2023`

```console
$ docker pull maven@sha256:de93d64626e8afb762cf4c27e73d0c6c8792ea0ec9181177ece0f700a9adcdfa
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `maven:3-amazoncorretto-17-al2023` - linux; amd64

```console
$ docker pull maven@sha256:8d0e7ed9a66d2e1d478a92dd02df091df21c12086d84121f23e54c15d9b66622
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **377.9 MB (377917265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcfba4d9849dacdadf613470df668dcc2d3f0a9f6f419ef033c6b3ba40f1ba83`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 17 Sep 2026 21:13:04 GMT
COPY /rootfs/ / # buildkit
# Thu, 17 Sep 2026 21:13:04 GMT
CMD ["/bin/bash"]
# Thu, 17 Sep 2026 22:22:08 GMT
ARG version=17.0.20.10-1
# Thu, 17 Sep 2026 22:22:08 GMT
ARG package_version=1
# Thu, 17 Sep 2026 22:22:08 GMT
# ARGS: version=17.0.20.10-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 17 Sep 2026 22:22:08 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 22:22:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
# Sat, 26 Sep 2026 00:22:53 GMT
RUN yum install -y tar which gzip # TODO remove # buildkit
# Sat, 26 Sep 2026 00:22:55 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Sat, 26 Sep 2026 00:22:55 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Sat, 26 Sep 2026 00:22:55 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Sat, 26 Sep 2026 00:22:55 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Sat, 26 Sep 2026 00:22:55 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Sat, 26 Sep 2026 00:22:55 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 26 Sep 2026 00:22:55 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Sat, 26 Sep 2026 00:22:55 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Sat, 26 Sep 2026 00:22:55 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Sat, 26 Sep 2026 00:22:55 GMT
ARG USER_HOME_DIR=/root
# Sat, 26 Sep 2026 00:22:55 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 26 Sep 2026 00:22:55 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 26 Sep 2026 00:22:55 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:0f0cc63a5845e28f771c9fceda4decc68b806470b009dae4085b441df0329b69`  
		Last Modified: Mon, 31 Aug 2026 23:14:18 GMT  
		Size: 54.6 MB (54586282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a410bbbb64f05c7a2fe656c5316d43d139e3c4f15d9616eaebc721f36de3c7b`  
		Last Modified: Thu, 17 Sep 2026 22:22:29 GMT  
		Size: 157.1 MB (157139807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90ef7f97f4677b7ff94730dee5211838ce3f6c2c0fdcc67936cf71c29712d1f2`  
		Last Modified: Sat, 26 Sep 2026 00:23:15 GMT  
		Size: 143.3 MB (143306050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e91cfde77c125122305e55cc54b65f762b23d2e90f54b239c8f5c7e22b5ddb4`  
		Last Modified: Sat, 26 Sep 2026 00:23:12 GMT  
		Size: 13.5 MB (13524151 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:982d0e0583aaf36612273957be2190aecc31d6e4ca0d3aac68a3954f4d683e93`  
		Last Modified: Sat, 26 Sep 2026 00:23:12 GMT  
		Size: 9.4 MB (9359965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:857bbd1a66133e1bbaf8bdcc1ee3154a05b81c90d0ca37fe5834aa16748269e1`  
		Last Modified: Sat, 26 Sep 2026 00:23:11 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95a88398b1b1822fb2c09f4e87f9fe8c6ed2cd4e3c6ae5f82dd2328e56200e37`  
		Last Modified: Sat, 26 Sep 2026 00:23:12 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-17-al2023` - unknown; unknown

```console
$ docker pull maven@sha256:ce69ec086e6e4d2065052991f29ff51b446ccc213ff511c5aeb0a7130feed1a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6264172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:086de12ac699580692d05fd26a00e73d0d680da3a0fa308b2f2c15613ebcff8c`

```dockerfile
```

-	Layers:
	-	`sha256:1aa8c854bfd4f1e4db90d3a32945cb84d480be76cb2b8892a8d91d9eb1066ef3`  
		Last Modified: Sat, 26 Sep 2026 00:23:11 GMT  
		Size: 6.2 MB (6246879 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9b060aa9be4bc881ce142e53f8a7671d212cef0eda5b43cef9fae0fe3a4e69d9`  
		Last Modified: Sat, 26 Sep 2026 00:23:11 GMT  
		Size: 17.3 KB (17293 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-amazoncorretto-17-al2023` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:a8f0f94ee597609c7e1928874a6a4a20ed8115ba3a4012ee124e7910205dc4d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **374.2 MB (374182397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:673c0aaca57ad6084f7ed7fb4df80dc1cf4acc0cb9cbd9e7e5cd6d1755069591`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 17 Sep 2026 21:12:44 GMT
COPY /rootfs/ / # buildkit
# Thu, 17 Sep 2026 21:12:44 GMT
CMD ["/bin/bash"]
# Thu, 17 Sep 2026 22:46:33 GMT
ARG version=17.0.20.10-1
# Thu, 17 Sep 2026 22:46:33 GMT
ARG package_version=1
# Thu, 17 Sep 2026 22:46:33 GMT
# ARGS: version=17.0.20.10-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 17 Sep 2026 22:46:33 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 22:46:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
# Sat, 26 Sep 2026 00:18:37 GMT
RUN yum install -y tar which gzip # TODO remove # buildkit
# Sat, 26 Sep 2026 00:18:39 GMT
RUN yum install -y openssh-clients findutils # buildkit
# Sat, 26 Sep 2026 00:18:39 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Sat, 26 Sep 2026 00:18:39 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Sat, 26 Sep 2026 00:18:39 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Sat, 26 Sep 2026 00:18:39 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Sat, 26 Sep 2026 00:18:39 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 26 Sep 2026 00:18:39 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Sat, 26 Sep 2026 00:18:39 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Sat, 26 Sep 2026 00:18:39 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Sat, 26 Sep 2026 00:18:39 GMT
ARG USER_HOME_DIR=/root
# Sat, 26 Sep 2026 00:18:39 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 26 Sep 2026 00:18:39 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 26 Sep 2026 00:18:39 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:6b98cf5afd5c5e1a58de351abf0b1ec3a4a61b63fd5a86c62edc6367d59ac249`  
		Last Modified: Mon, 31 Aug 2026 23:14:33 GMT  
		Size: 53.5 MB (53452573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fff79e1d5af020f98faf12385f3d8aaea81dafb18e71b354d73027f091e09984`  
		Last Modified: Thu, 17 Sep 2026 22:46:55 GMT  
		Size: 156.0 MB (155950320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ddad5fe5146a520bd84f7083ee10d61ab9f3b9345fb27a53b7f6dbb300e345f`  
		Last Modified: Sat, 26 Sep 2026 00:19:00 GMT  
		Size: 141.6 MB (141646122 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28d69fd52a048a1256d38932343bc1d5cbbf33ffc454b02a38c5b69d83b7e3a0`  
		Last Modified: Sat, 26 Sep 2026 00:18:57 GMT  
		Size: 13.8 MB (13772405 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:655413abb64d7a85ec68aea42d4402ae884fb1d527cbfaf72f7e114edba6ccd1`  
		Last Modified: Sat, 26 Sep 2026 00:18:57 GMT  
		Size: 9.4 MB (9359968 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79827fe26c0229ca74f19bb2c69117c5535044d47e1c0eadcddaf51eb9ff1a01`  
		Last Modified: Sat, 26 Sep 2026 00:18:56 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53c4d7791402e59b6cbad40a64fa24de30e95dbd22e65122b09bb0e6d194efbe`  
		Last Modified: Sat, 26 Sep 2026 00:18:58 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-amazoncorretto-17-al2023` - unknown; unknown

```console
$ docker pull maven@sha256:d4112b7b61252db070c6a56270443e93249fa2a815b43050bc93331c61c28dbb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6263324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb90ad82390d075e559c1e7ca7447b8fcb09bed9c5f54a2f2a6b3854dba2cdaa`

```dockerfile
```

-	Layers:
	-	`sha256:e427d4bbfe16379148bb2c0cfa6aa6119ca48606182fb05709b8f9088f734530`  
		Last Modified: Sat, 26 Sep 2026 00:18:57 GMT  
		Size: 6.2 MB (6245846 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:11e8dfc4aa85255a07992eecd248d804192ba170deb4fa82305d11b65d5eca2f`  
		Last Modified: Sat, 26 Sep 2026 00:18:56 GMT  
		Size: 17.5 KB (17478 bytes)  
		MIME: application/vnd.in-toto+json
