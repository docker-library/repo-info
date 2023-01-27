## `amazoncorretto:11-al2022-RC-headful`

```console
$ docker pull amazoncorretto@sha256:7f3befff7adeddfec380a628d774d931004b5fb557401cbf61104a0744dcfff3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `amazoncorretto:11-al2022-RC-headful` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:45190098e5d8a1e9e543734bf6bb46a56863679dc9d51b21d82667af5e131633
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.1 MB (133076078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a57c505244c916cc4ea6aca42cbfd97ef814e0b68d3259d96ae88d65c4e595c6`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 16 Dec 2022 01:21:07 GMT
ADD file:c2f3cc504734106dfe39dce615cfa085097451f0876c9574a8294c8494624c9f in / 
# Fri, 16 Dec 2022 01:21:07 GMT
CMD ["/bin/bash"]
# Wed, 18 Jan 2023 20:24:17 GMT
ARG version=11.0.18.10-1
# Wed, 18 Jan 2023 20:25:08 GMT
# ARGS: version=11.0.18.10-1
RUN set -eux     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2022     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2022.$(uname -m).rpm" "java-11-amazon-corretto-$version.amzn2022.$(uname -m).rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.$(uname -m)/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf
# Wed, 18 Jan 2023 20:25:08 GMT
ENV LANG=C.UTF-8
# Wed, 18 Jan 2023 20:25:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:f692b7ceefbf778187c80c39b96d604e39ccf4a889e08c5f052481134db22ae1`  
		Last Modified: Tue, 13 Dec 2022 16:21:44 GMT  
		Size: 57.9 MB (57867562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15e5bdb80deaf9378363c0227092582675d85e9e6731d9ccf228e9637d0bfd47`  
		Last Modified: Wed, 18 Jan 2023 20:36:16 GMT  
		Size: 75.2 MB (75208516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `amazoncorretto:11-al2022-RC-headful` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:da6cb7c033d4421e55bd6d78d4617e362fff2b2bd2bacaf40f2d2ad6555620ca
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.2 MB (131226099 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ec1c213a8e8d2dc8022ab9b381a1eb16ae16cc8272af145e3b82cd44d299100`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 16 Dec 2022 00:41:37 GMT
ADD file:ff147b37fd20344db08d3808c57eecb4baf220c236bdadf01d19a61f2dd6327e in / 
# Fri, 16 Dec 2022 00:41:38 GMT
CMD ["/bin/bash"]
# Wed, 18 Jan 2023 20:40:21 GMT
ARG version=11.0.18.10-1
# Wed, 18 Jan 2023 20:41:02 GMT
# ARGS: version=11.0.18.10-1
RUN set -eux     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2022     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2022.$(uname -m).rpm" "java-11-amazon-corretto-$version.amzn2022.$(uname -m).rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.$(uname -m)/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf
# Wed, 18 Jan 2023 20:41:03 GMT
ENV LANG=C.UTF-8
# Wed, 18 Jan 2023 20:41:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:f3bff8cbe57b20ad8a63095a2b0c5d31afccc39fd7fbaab9b0c483430b38429a`  
		Last Modified: Tue, 13 Dec 2022 16:26:02 GMT  
		Size: 56.7 MB (56712057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cfba30e2df7b2fd1adaacae5cdf6b806558046e9df9a2b55dcf62b3cc337aeb`  
		Last Modified: Wed, 18 Jan 2023 20:45:25 GMT  
		Size: 74.5 MB (74514042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
