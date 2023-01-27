## `amazoncorretto:8-al2022-RC-jre`

```console
$ docker pull amazoncorretto@sha256:39272b25e5fe854676b95e99dfad552fe3aeba6eebda5b17f61fcac10c0c07d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `amazoncorretto:8-al2022-RC-jre` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:75d44cc0f23988ae2cfa86516e5654dd3cecdca948956919433409b316ca9bbe
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.1 MB (265107708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38beffb3e8d2d1e801c41577681d73dee7c84b4cbf8b1ca5054662a6937fd044`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 16 Dec 2022 01:21:07 GMT
ADD file:c2f3cc504734106dfe39dce615cfa085097451f0876c9574a8294c8494624c9f in / 
# Fri, 16 Dec 2022 01:21:07 GMT
CMD ["/bin/bash"]
# Wed, 18 Jan 2023 20:20:04 GMT
ARG version=1.8.0_362.b08-1
# Wed, 18 Jan 2023 20:20:33 GMT
# ARGS: version=1.8.0_362.b08-1
RUN set -eux     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2022     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2022.$(uname -m).rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2022.$(uname -m).rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.$(uname -m)/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf
# Wed, 18 Jan 2023 20:20:35 GMT
ENV LANG=C.UTF-8
# Wed, 18 Jan 2023 20:20:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
```

-	Layers:
	-	`sha256:f692b7ceefbf778187c80c39b96d604e39ccf4a889e08c5f052481134db22ae1`  
		Last Modified: Tue, 13 Dec 2022 16:21:44 GMT  
		Size: 57.9 MB (57867562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ae88b61bb23d58c3640590276d458c632cf8e36651f5273961922f996bed235`  
		Last Modified: Wed, 18 Jan 2023 20:32:07 GMT  
		Size: 207.2 MB (207240146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `amazoncorretto:8-al2022-RC-jre` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:1f30fb3af5f79afb5443f8bdfbcbb9b20f98be75cebb055a67c3fba43eaaef8d
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.7 MB (173709173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa6112f4c126a476bf5002408fb70c24df16bcf6a7cc166b2eeae944a8ff8d01`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 16 Dec 2022 00:41:37 GMT
ADD file:ff147b37fd20344db08d3808c57eecb4baf220c236bdadf01d19a61f2dd6327e in / 
# Fri, 16 Dec 2022 00:41:38 GMT
CMD ["/bin/bash"]
# Wed, 18 Jan 2023 20:39:41 GMT
ARG version=1.8.0_362.b08-1
# Wed, 18 Jan 2023 20:39:54 GMT
# ARGS: version=1.8.0_362.b08-1
RUN set -eux     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2022     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2022.$(uname -m).rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2022.$(uname -m).rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.$(uname -m)/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf
# Wed, 18 Jan 2023 20:39:55 GMT
ENV LANG=C.UTF-8
# Wed, 18 Jan 2023 20:39:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
```

-	Layers:
	-	`sha256:f3bff8cbe57b20ad8a63095a2b0c5d31afccc39fd7fbaab9b0c483430b38429a`  
		Last Modified: Tue, 13 Dec 2022 16:26:02 GMT  
		Size: 56.7 MB (56712057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfd0b904b3350381c6ad6188368b9e1b90c2143ad3a2f2d0b1dc070f715d5bcf`  
		Last Modified: Wed, 18 Jan 2023 20:44:02 GMT  
		Size: 117.0 MB (116997116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
