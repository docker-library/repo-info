## `amazoncorretto:26-headful`

```console
$ docker pull amazoncorretto@sha256:b4ee9384653d669759f21b16ec8a07ba8f50f42f27cdfac0944e2c8c318057f6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:26-headful` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:8c84babc7b1a838c2f23e820dd1514cff752e323b83af5a9952ecc1692565d4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.3 MB (161270887 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac863b86c439a58ba8f45f4cf25fdb68dbc85a272f32402237632f2ca4439fbb`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 21 Oct 2026 22:45:19 GMT
COPY /rootfs/ / # buildkit
# Wed, 21 Oct 2026 22:45:19 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 23:29:16 GMT
ARG version=26.0.2.11-1
# Wed, 21 Oct 2026 23:29:16 GMT
ARG package_version=1
# Wed, 21 Oct 2026 23:29:16 GMT
# ARGS: version=26.0.2.11-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-26-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-26-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-26-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 21 Oct 2026 23:29:16 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 23:29:16 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-26-amazon-corretto
```

-	Layers:
	-	`sha256:7234d0a9b6ba1270c7bb653ee62a443a1dbb6fdfa833336edd3c0691c2524d1f`  
		Last Modified: Thu, 01 Oct 2026 02:22:29 GMT  
		Size: 54.6 MB (54630770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b66e2a98d48af18fa72157629717592bf6744b424c1dae7e184a91f66b61601`  
		Last Modified: Wed, 21 Oct 2026 23:29:35 GMT  
		Size: 106.6 MB (106640117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:26-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:0a98a59eee72c6f3984b037c2f0a936731df2163f5db35342527f95f84c79bdf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5241833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:388e5c63bc66c5c9e5bcf5c2464b570243122aaa734c48d633d6713179ad8043`

```dockerfile
```

-	Layers:
	-	`sha256:93ee863e8ab3504f782df1a72f600275aaa230c0bc1e70f3f90a6ea884af66c5`  
		Last Modified: Wed, 21 Oct 2026 23:29:32 GMT  
		Size: 5.2 MB (5232464 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fa6f43fc21db3eeab6abb5606219613cbf3c19c275a9a9aa0686e93a75355440`  
		Last Modified: Wed, 21 Oct 2026 23:29:32 GMT  
		Size: 9.4 KB (9369 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:26-headful` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:1e80900a21a7f50f7ddfe2cb1e71da68ff87a4e789b494a23a30a4bc9b82245a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.0 MB (159046444 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f237cc3b9dcfbf7bdfcec74c6e3200e44737eb0ae218fe9f69d1732f48115e2e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 21 Oct 2026 23:11:39 GMT
COPY /rootfs/ / # buildkit
# Wed, 21 Oct 2026 23:11:39 GMT
CMD ["/bin/bash"]
# Thu, 22 Oct 2026 00:21:05 GMT
ARG version=26.0.2.11-1
# Thu, 22 Oct 2026 00:21:05 GMT
ARG package_version=1
# Thu, 22 Oct 2026 00:21:05 GMT
# ARGS: version=26.0.2.11-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-26-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-26-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-26-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 22 Oct 2026 00:21:05 GMT
ENV LANG=C.UTF-8
# Thu, 22 Oct 2026 00:21:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-26-amazon-corretto
```

-	Layers:
	-	`sha256:3009834f3cf8cead1d3dea9d3cbebc711c021c4aed04759be014247a0c3181e7`  
		Last Modified: Thu, 01 Oct 2026 02:22:31 GMT  
		Size: 53.5 MB (53504398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01eca9d0accf730e55dbcf10b1e699e075f77eaf71f41f91fb3b5f99b244e32a`  
		Last Modified: Thu, 22 Oct 2026 00:21:26 GMT  
		Size: 105.5 MB (105542046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:26-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:d1b3174a7d52a2dc38463fe23fb10915d467e3c8da5325b6e9b9c8775ea22330
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5240738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d439ed8d0e6b9dbe4538efd7391c2762882a4e638ceef46198b0b8bf7be6f2bb`

```dockerfile
```

-	Layers:
	-	`sha256:c762b838a8bf0b0ad30f6efca7e3624a6b2bbc849b015c504afac1757439e3b6`  
		Last Modified: Thu, 22 Oct 2026 00:21:23 GMT  
		Size: 5.2 MB (5231277 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5f6e7381934101815c84bf82a1389952b5119c4943866a591e66295198913ed9`  
		Last Modified: Thu, 22 Oct 2026 00:21:23 GMT  
		Size: 9.5 KB (9461 bytes)  
		MIME: application/vnd.in-toto+json
