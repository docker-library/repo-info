## `amazoncorretto:26-al2023-headful`

```console
$ docker pull amazoncorretto@sha256:9a0a9543f5513f10df78d0352558f769483280ea986659cd69bc46d573b59337
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:26-al2023-headful` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:4bb106ce2469c1555aa9d9f53f04bef471496e9c604e99aef250d4a401764500
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.2 MB (161193597 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e436eb64bd5448989fe5c0437e79bbdffbd9b89deaabbe10fcda7596cadc5e8`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 27 Jul 2026 21:19:13 GMT
COPY /rootfs/ / # buildkit
# Mon, 27 Jul 2026 21:19:13 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 21:37:58 GMT
ARG version=26.0.2.10-1
# Mon, 27 Jul 2026 21:37:58 GMT
ARG package_version=1
# Mon, 27 Jul 2026 21:37:58 GMT
# ARGS: version=26.0.2.10-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-26-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-26-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-26-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 27 Jul 2026 21:37:58 GMT
ENV LANG=C.UTF-8
# Mon, 27 Jul 2026 21:37:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-26-amazon-corretto
```

-	Layers:
	-	`sha256:5492e2c54dedbfa8cbd57605d23f9468dae3f869273566ed212185e48340d5d5`  
		Last Modified: Fri, 24 Jul 2026 21:00:37 GMT  
		Size: 54.6 MB (54572684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4bd33fc55d0f6675be2e39a502bb65b836de6d3611c6856900279ad134990a5`  
		Last Modified: Mon, 27 Jul 2026 21:38:19 GMT  
		Size: 106.6 MB (106620913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:26-al2023-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:94a69d16b6bb1a9a6be28e1e0bcae56f5b60fc019e02d87f7346749e4897b15c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5241828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c099e6826cb898ba926cbcbcc741c961c4eb5587e954b644957f5e1d6f3841c2`

```dockerfile
```

-	Layers:
	-	`sha256:3bf1eb6c954fe071dc732075dd125026d5d865de1c163750dc6de4e33c82a513`  
		Last Modified: Mon, 27 Jul 2026 21:38:17 GMT  
		Size: 5.2 MB (5232459 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e03f19dc27ff727e4877283520db862466e59a07f16912dcbd727fd8e83d6507`  
		Last Modified: Mon, 27 Jul 2026 21:38:16 GMT  
		Size: 9.4 KB (9369 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:26-al2023-headful` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:26b1088013926e8fd02e61162b886dc440d3bdf4d77c4849ccb0cf39852085da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.0 MB (158977066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1459a62fc759bcebeb6c751568452e841784590096b92686101fca116978b5f5`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 27 Jul 2026 21:19:12 GMT
COPY /rootfs/ / # buildkit
# Mon, 27 Jul 2026 21:19:12 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 21:37:11 GMT
ARG version=26.0.2.10-1
# Mon, 27 Jul 2026 21:37:11 GMT
ARG package_version=1
# Mon, 27 Jul 2026 21:37:11 GMT
# ARGS: version=26.0.2.10-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-26-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-26-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-26-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 27 Jul 2026 21:37:11 GMT
ENV LANG=C.UTF-8
# Mon, 27 Jul 2026 21:37:11 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-26-amazon-corretto
```

-	Layers:
	-	`sha256:07006faf6af6164a3570dfc90b2fce3d8038766e9e8572e8cc38b3a1eb8bbdd7`  
		Last Modified: Fri, 24 Jul 2026 21:55:34 GMT  
		Size: 53.4 MB (53449611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e472d59643ffcde138ebad41357f8cf0405bc04ff5d65a9a5c5f7e4b502c490`  
		Last Modified: Mon, 27 Jul 2026 21:37:32 GMT  
		Size: 105.5 MB (105527455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:26-al2023-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:6d44b1e1f71a10a4787d374b0e7a5abdd776b6153dd7cfd204b6a63a01fac88e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5240733 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:296e3f521fec8ecf36f5e863ce38b2cdb889e5b780478aecc8e5d61306993158`

```dockerfile
```

-	Layers:
	-	`sha256:e57340db990b581e019846d9c56b329c277caee237acd681eb15e67a0722c20d`  
		Last Modified: Mon, 27 Jul 2026 21:37:29 GMT  
		Size: 5.2 MB (5231272 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0110e8d27912a3d706dc9e1c46a066c916bb13bb4119544293ae7c3e6ff4d942`  
		Last Modified: Mon, 27 Jul 2026 21:37:29 GMT  
		Size: 9.5 KB (9461 bytes)  
		MIME: application/vnd.in-toto+json
