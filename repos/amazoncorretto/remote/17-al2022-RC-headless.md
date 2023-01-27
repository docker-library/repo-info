## `amazoncorretto:17-al2022-RC-headless`

```console
$ docker pull amazoncorretto@sha256:f96e7ef18ed1656c99f06940f501b49ae43ddde719794472b859d7f1d2c9e36a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `amazoncorretto:17-al2022-RC-headless` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:b0de29c0553c7630d48e1af2867be49055e11a3f3d1f8e2d28d3e3cffdace3f8
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.4 MB (137380677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77eaac347a29c708c3bf6b86d7a6495f91d3db3c62d58936fdcc2a737e02029a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 16 Dec 2022 01:21:07 GMT
ADD file:c2f3cc504734106dfe39dce615cfa085097451f0876c9574a8294c8494624c9f in / 
# Fri, 16 Dec 2022 01:21:07 GMT
CMD ["/bin/bash"]
# Wed, 18 Jan 2023 20:26:19 GMT
ARG version=17.0.6.10-1
# Wed, 18 Jan 2023 20:26:19 GMT
ARG package_version=1
# Wed, 18 Jan 2023 20:26:52 GMT
# ARGS: package_version=1 version=17.0.6.10-1
RUN set -eux     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2022     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2022.${package_version}.$(uname -m).rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.$(uname -m)/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf
# Wed, 18 Jan 2023 20:26:53 GMT
ENV LANG=C.UTF-8
# Wed, 18 Jan 2023 20:26:53 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:f692b7ceefbf778187c80c39b96d604e39ccf4a889e08c5f052481134db22ae1`  
		Last Modified: Tue, 13 Dec 2022 16:21:44 GMT  
		Size: 57.9 MB (57867562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aee53ff0d18512ffcdc2ea317b39676f6261b3143f959cd8d9b45d20d05777fb`  
		Last Modified: Wed, 18 Jan 2023 20:39:22 GMT  
		Size: 79.5 MB (79513115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `amazoncorretto:17-al2022-RC-headless` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:c0b76614a86db4ade33c4f9e4091e868613b82d07dca3b273d051795a8b6b6c8
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.7 MB (135661435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d90bbb2afbc6978684d34c68b73780986697723dddaa2203517f927d5e7ef73`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 16 Dec 2022 00:41:37 GMT
ADD file:ff147b37fd20344db08d3808c57eecb4baf220c236bdadf01d19a61f2dd6327e in / 
# Fri, 16 Dec 2022 00:41:38 GMT
CMD ["/bin/bash"]
# Wed, 18 Jan 2023 20:41:30 GMT
ARG version=17.0.6.10-1
# Wed, 18 Jan 2023 20:41:30 GMT
ARG package_version=1
# Wed, 18 Jan 2023 20:42:00 GMT
# ARGS: package_version=1 version=17.0.6.10-1
RUN set -eux     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2022     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2022.${package_version}.$(uname -m).rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.$(uname -m)/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf
# Wed, 18 Jan 2023 20:42:01 GMT
ENV LANG=C.UTF-8
# Wed, 18 Jan 2023 20:42:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:f3bff8cbe57b20ad8a63095a2b0c5d31afccc39fd7fbaab9b0c483430b38429a`  
		Last Modified: Tue, 13 Dec 2022 16:26:02 GMT  
		Size: 56.7 MB (56712057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7df53884703594ebcd7bd914048ea98127777ed3444dd5c99e3766b7f360102d`  
		Last Modified: Wed, 18 Jan 2023 20:46:28 GMT  
		Size: 78.9 MB (78949378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
