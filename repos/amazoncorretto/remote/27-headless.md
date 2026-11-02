## `amazoncorretto:27-headless`

```console
$ docker pull amazoncorretto@sha256:f31f45a08e4d78a6e2245d84f3d5b7d9fa1c57de011615e1508f31e91f637a86
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:27-headless` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:7931cce2e1b948cfc58cf70802c29719b1ef6e48adac0b9e606feb9e01561179
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.8 MB (159811017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70a3a249de0f00a15837cfff049f90313e9c8ecb0ef47738cafdce147af5dca7`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 02 Nov 2026 19:55:48 GMT
COPY /rootfs/ / # buildkit
# Mon, 02 Nov 2026 19:55:48 GMT
CMD ["/bin/bash"]
# Mon, 02 Nov 2026 20:11:59 GMT
ARG version=27.0.1.0.11-1
# Mon, 02 Nov 2026 20:11:59 GMT
ARG resource_version=27.0.1.0.11
# Mon, 02 Nov 2026 20:11:59 GMT
ARG package_version=1
# Mon, 02 Nov 2026 20:11:59 GMT
# ARGS: version=27.0.1.0.11-1 resource_version=27.0.1.0.11 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-27-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-27-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 02 Nov 2026 20:11:59 GMT
ENV LANG=C.UTF-8
# Mon, 02 Nov 2026 20:11:59 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-amazon-corretto
```

-	Layers:
	-	`sha256:36d0e51e1ea56325505d833f7d87567b6720c396e9a5742de0f157b063545163`  
		Last Modified: Sat, 31 Oct 2026 02:35:05 GMT  
		Size: 54.6 MB (54569615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e93ecf2f5e3f72aaf86f4dc541c681c29a745a6d2798d8fcadc86503ad1449f1`  
		Last Modified: Mon, 02 Nov 2026 20:12:19 GMT  
		Size: 105.2 MB (105241402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:27-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:61c9a69ecc25ffac49f8f9791899a2d2f18fa19a5d390e73b0d5293425baab62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5214669 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4f483c640c95c79e2390b6498869508e46cb8e6c4d30d6f0481b7d2c3a3cdc4`

```dockerfile
```

-	Layers:
	-	`sha256:257804511af05b041045f116983018b23f52187d3f8a3798cd97b05da6c78ab8`  
		Last Modified: Mon, 02 Nov 2026 20:12:17 GMT  
		Size: 5.2 MB (5205408 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0b56079800db273fe7aa178c799c39a1bbc5136915ea2aaca2216b9c8549fd75`  
		Last Modified: Mon, 02 Nov 2026 20:12:16 GMT  
		Size: 9.3 KB (9261 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:27-headless` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:1359385cb8d57a9547fea8b407a2f650f2e48c55dc64d126c435d6625f27892e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.7 MB (157744485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06eabbcf6a7f66c3c3a997dd2ad6eb5fa935d8a5fbfe000b80ae749847c16357`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 02 Nov 2026 19:55:47 GMT
COPY /rootfs/ / # buildkit
# Mon, 02 Nov 2026 19:55:47 GMT
CMD ["/bin/bash"]
# Mon, 02 Nov 2026 20:11:45 GMT
ARG version=27.0.1.0.11-1
# Mon, 02 Nov 2026 20:11:45 GMT
ARG resource_version=27.0.1.0.11
# Mon, 02 Nov 2026 20:11:45 GMT
ARG package_version=1
# Mon, 02 Nov 2026 20:11:45 GMT
# ARGS: version=27.0.1.0.11-1 resource_version=27.0.1.0.11 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-27-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-27-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 02 Nov 2026 20:11:45 GMT
ENV LANG=C.UTF-8
# Mon, 02 Nov 2026 20:11:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-amazon-corretto
```

-	Layers:
	-	`sha256:c1eee8f81fa5e953bb6eab0ff6f612967f0ef8b1dc9fac3cb2319b1021f7a245`  
		Last Modified: Sat, 31 Oct 2026 02:35:03 GMT  
		Size: 53.5 MB (53456123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be20fc4c3f12362d4c85399b971c1bcfb12de75efcdb961a7a0c9c2550c2c143`  
		Last Modified: Mon, 02 Nov 2026 20:12:07 GMT  
		Size: 104.3 MB (104288362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:27-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:371a8339754d902602924bc1dc5c1017b10a2ca3bc2eb6a7c110fc108a36e6bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5213569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5902ea030002ed1ec6732d29b84e079bb250a67ea0e8f05eabcf25370c08fe5`

```dockerfile
```

-	Layers:
	-	`sha256:e7cbce662dfd7b9d4f42b7f198699686bf6bc60ce31afb16108a3e3897cf4428`  
		Last Modified: Mon, 02 Nov 2026 20:12:04 GMT  
		Size: 5.2 MB (5204216 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:997a7779460cb5170eef318b802860aa7f3dcfeb517cb5d9465508fa210953dd`  
		Last Modified: Mon, 02 Nov 2026 20:12:03 GMT  
		Size: 9.4 KB (9353 bytes)  
		MIME: application/vnd.in-toto+json
