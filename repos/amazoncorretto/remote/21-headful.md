## `amazoncorretto:21-headful`

```console
$ docker pull amazoncorretto@sha256:8cfa56d158f255bfac5a4b5bd1567d2569e30c2888768326e4ce329f01c8deb6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:21-headful` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:16ccc3364e685c8ef31e885e0ea3bb02fe9a5ef71c28ecd3b64eded940071050
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.7 MB (144745588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f891ae96eaea2ecb060459ca48919422ff3bb4798c5f2122d7abc173ada612c5`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 05 Oct 2026 18:29:04 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:29:04 GMT
CMD ["/bin/bash"]
# Wed, 14 Oct 2026 17:08:03 GMT
ARG version=21.0.12.13-1
# Wed, 14 Oct 2026 17:08:03 GMT
ARG package_version=1
# Wed, 14 Oct 2026 17:08:03 GMT
# ARGS: version=21.0.12.13-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 14 Oct 2026 17:08:03 GMT
ENV LANG=C.UTF-8
# Wed, 14 Oct 2026 17:08:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
```

-	Layers:
	-	`sha256:7234d0a9b6ba1270c7bb653ee62a443a1dbb6fdfa833336edd3c0691c2524d1f`  
		Last Modified: Thu, 01 Oct 2026 02:22:29 GMT  
		Size: 54.6 MB (54630770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:315b1135fa55e0a2d0d2ce52d4d7cd53a47b0592788f93104ce4f8c3a488ac22`  
		Last Modified: Wed, 14 Oct 2026 17:08:19 GMT  
		Size: 90.1 MB (90114818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:ee542140a48ec7e943f4854711c768bfdaa9800ba5c43717e056ecce55405ba9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5233542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88baf99b8e22a4b3b3893a81e8aab19e765db3040d78bbaf3477181ed3f12ecf`

```dockerfile
```

-	Layers:
	-	`sha256:397b6db2c3219e919204a11036d1930f9c658ac9a1b4c70d5a6e6a7102ac8d22`  
		Last Modified: Wed, 14 Oct 2026 17:08:17 GMT  
		Size: 5.2 MB (5224167 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:549adffa8d87576c7b02079abd4b4f0129385d0b03964fb135986ff5ee37a40d`  
		Last Modified: Wed, 14 Oct 2026 17:08:17 GMT  
		Size: 9.4 KB (9375 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:21-headful` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:d51b95dbf1838f82604157ea2c2a117e3b2d71037a6c08caee549b9a1f0b412b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.8 MB (142750108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07ec88ce4ad8684dcc13902dd3f07d394b1df2bb985da46dcb426c6bb3da7b96`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 05 Oct 2026 18:28:31 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:28:31 GMT
CMD ["/bin/bash"]
# Wed, 14 Oct 2026 17:07:58 GMT
ARG version=21.0.12.13-1
# Wed, 14 Oct 2026 17:07:58 GMT
ARG package_version=1
# Wed, 14 Oct 2026 17:07:58 GMT
# ARGS: version=21.0.12.13-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 14 Oct 2026 17:07:58 GMT
ENV LANG=C.UTF-8
# Wed, 14 Oct 2026 17:07:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
```

-	Layers:
	-	`sha256:3009834f3cf8cead1d3dea9d3cbebc711c021c4aed04759be014247a0c3181e7`  
		Last Modified: Thu, 01 Oct 2026 02:22:31 GMT  
		Size: 53.5 MB (53504398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7217bf1766c69806fcf10a70bd3552fb128c9aee91a5e73b4bb2c6e9c9b12718`  
		Last Modified: Wed, 14 Oct 2026 17:08:17 GMT  
		Size: 89.2 MB (89245710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:8436be08f32eb82f931fa8bcba0837ce26f903feca4d8df488fb36ed1600719f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5232439 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e63dd6c92d385921f1e54075bb23ae58921263c8d1d8dcbba51adebafee9d409`

```dockerfile
```

-	Layers:
	-	`sha256:927162c651c39fceb5cd415bf40cd5843eda335015cd7f6b69359a81d722aa4b`  
		Last Modified: Wed, 14 Oct 2026 17:08:15 GMT  
		Size: 5.2 MB (5222973 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dcdb16b758399b9ca4d4c2854a4fcabc7ab292192c3ef6ba9cdafe70e56b3983`  
		Last Modified: Wed, 14 Oct 2026 17:08:14 GMT  
		Size: 9.5 KB (9466 bytes)  
		MIME: application/vnd.in-toto+json
