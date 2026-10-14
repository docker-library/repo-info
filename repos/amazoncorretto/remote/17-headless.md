## `amazoncorretto:17-headless`

```console
$ docker pull amazoncorretto@sha256:f0360fa5e8b6bd5cf85443c1425705de9b55928068a8045f5093ed0b6f9661d9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-headless` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:148c5ec8e5902d1fb5c56015289492f6002ecc7776163687aa822fb26ab5fb2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.1 MB (137114587 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f558eb22e299730acb7773d4522149e624000ee742e37f3e24e8f9b3f4d02db`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 05 Oct 2026 18:29:04 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:29:04 GMT
CMD ["/bin/bash"]
# Wed, 14 Oct 2026 17:07:52 GMT
ARG version=17.0.20.13-1
# Wed, 14 Oct 2026 17:07:52 GMT
ARG package_version=1
# Wed, 14 Oct 2026 17:07:52 GMT
# ARGS: version=17.0.20.13-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 14 Oct 2026 17:07:52 GMT
ENV LANG=C.UTF-8
# Wed, 14 Oct 2026 17:07:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:7234d0a9b6ba1270c7bb653ee62a443a1dbb6fdfa833336edd3c0691c2524d1f`  
		Last Modified: Thu, 01 Oct 2026 02:22:29 GMT  
		Size: 54.6 MB (54630770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:125fe319d64b75865cee19512d0b456fd61bcd0845357ff7f2a53218f8c91bf2`  
		Last Modified: Wed, 14 Oct 2026 17:08:09 GMT  
		Size: 82.5 MB (82483817 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:7a93831ffb74c9efd84aa8f007f29f80a51434d8b2b95b3b1f8bc3be3735e365
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5206318 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25fc769291d6668ef5644bce9d6bdb90b22aa701ce8d6440d7b69eaa1ae28c73`

```dockerfile
```

-	Layers:
	-	`sha256:b43cd0be663c331732bbccf396f202d2999765fa1b90a7edf7e0e66852481202`  
		Last Modified: Wed, 14 Oct 2026 17:08:07 GMT  
		Size: 5.2 MB (5197112 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9fbe3030a6c8b1d26d7e6475dc13fec3a1de79543f9eea97b1e73e9f1491c7ec`  
		Last Modified: Wed, 14 Oct 2026 17:08:07 GMT  
		Size: 9.2 KB (9206 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:17-headless` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:db9ad2856a5ee249e03c6bc64fcf1a6ec49a3289911e2df2d21566a5163c490b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.4 MB (135416801 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07268f61484070c4c25cf14349961c3e8a7ee13b812aedad208b7fdd5af029f3`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 05 Oct 2026 18:28:31 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:28:31 GMT
CMD ["/bin/bash"]
# Wed, 14 Oct 2026 17:07:51 GMT
ARG version=17.0.20.13-1
# Wed, 14 Oct 2026 17:07:51 GMT
ARG package_version=1
# Wed, 14 Oct 2026 17:07:51 GMT
# ARGS: version=17.0.20.13-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 14 Oct 2026 17:07:51 GMT
ENV LANG=C.UTF-8
# Wed, 14 Oct 2026 17:07:51 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:3009834f3cf8cead1d3dea9d3cbebc711c021c4aed04759be014247a0c3181e7`  
		Last Modified: Thu, 01 Oct 2026 02:22:31 GMT  
		Size: 53.5 MB (53504398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:410daee406ed2a3a377f9574531a7f62742a8b1734c7278d6ef0073e6f35708b`  
		Last Modified: Wed, 14 Oct 2026 17:08:09 GMT  
		Size: 81.9 MB (81912403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:f6b592a7916b0b012f0c0a91248042d84a36c9c3b31bf3c323570ff0655efbe5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5205210 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5510e30f6b5e52ea903b47ed4c7cff6414df3f8716417d533939d7452e24234a`

```dockerfile
```

-	Layers:
	-	`sha256:40ad4b680ba1f02f52d6dbb76146e6e47e16764037b693fce4d4527cdea08d5a`  
		Last Modified: Wed, 14 Oct 2026 17:08:07 GMT  
		Size: 5.2 MB (5195913 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9c5c7bb46d0baf4049e522661be39bfc2f956bd3bf66356020d05c96a5a91abc`  
		Last Modified: Wed, 14 Oct 2026 17:08:07 GMT  
		Size: 9.3 KB (9297 bytes)  
		MIME: application/vnd.in-toto+json
