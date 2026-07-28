## `amazoncorretto:25-headful`

```console
$ docker pull amazoncorretto@sha256:ae85f3ad9bc91bfedcd7ffb2e8e01270a6b6f656848e45bfd0b5789c45e4c7ac
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:25-headful` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:3ec26cc5b7dfe970bf1712d35e00e72ff65f777bc5cbb29dbb45592f41bc1ae1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.1 MB (159055190 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a47ab7e2f62e3a3ea74205e5dc79368ebeb753c2f61a5305b2bd22252b05c418`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 27 Jul 2026 21:19:13 GMT
COPY /rootfs/ / # buildkit
# Mon, 27 Jul 2026 21:19:13 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 21:37:38 GMT
ARG version=25.0.4.7-1
# Mon, 27 Jul 2026 21:37:38 GMT
ARG package_version=1
# Mon, 27 Jul 2026 21:37:38 GMT
# ARGS: version=25.0.4.7-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 27 Jul 2026 21:37:38 GMT
ENV LANG=C.UTF-8
# Mon, 27 Jul 2026 21:37:38 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
```

-	Layers:
	-	`sha256:5492e2c54dedbfa8cbd57605d23f9468dae3f869273566ed212185e48340d5d5`  
		Last Modified: Fri, 24 Jul 2026 21:00:37 GMT  
		Size: 54.6 MB (54572684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48c6bda8db6fd6126320972eb75598c751ddc4a8dfebeb64bad8c7ce3367acf2`  
		Last Modified: Mon, 27 Jul 2026 21:37:59 GMT  
		Size: 104.5 MB (104482506 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:95d62624c39eed774c41f7960bf127794b7b7840316a81a3d70a880378ee76bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5243463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a51832dffac82529a35a9ea4d44870432906486c5aa6c0c87a87adc4a799f50`

```dockerfile
```

-	Layers:
	-	`sha256:2da5bf1ec2919111054e3ed23bb9f6689fe96ff91ef32f1dd65ffab1f19d0d3d`  
		Last Modified: Mon, 27 Jul 2026 21:37:57 GMT  
		Size: 5.2 MB (5234095 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8c70036ed79dbd675e3e59388b4c54744f027a2d1ffca71ec382ed43820ca044`  
		Last Modified: Mon, 27 Jul 2026 21:37:56 GMT  
		Size: 9.4 KB (9368 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:25-headful` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:f7b8b55459562eefe196be73b6fb5ec4225e2832fdd34f6dd88ebec5dbeb768d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.8 MB (156840745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:029d989d70359aa213d9cc4ffa4675dca5392787dba2013e67ed694749d4987c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 27 Jul 2026 21:19:12 GMT
COPY /rootfs/ / # buildkit
# Mon, 27 Jul 2026 21:19:12 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 21:36:52 GMT
ARG version=25.0.4.7-1
# Mon, 27 Jul 2026 21:36:52 GMT
ARG package_version=1
# Mon, 27 Jul 2026 21:36:52 GMT
# ARGS: version=25.0.4.7-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 27 Jul 2026 21:36:52 GMT
ENV LANG=C.UTF-8
# Mon, 27 Jul 2026 21:36:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
```

-	Layers:
	-	`sha256:07006faf6af6164a3570dfc90b2fce3d8038766e9e8572e8cc38b3a1eb8bbdd7`  
		Last Modified: Fri, 24 Jul 2026 21:55:34 GMT  
		Size: 53.4 MB (53449611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:603f0f267930a02a1913759cc2de769c1a767adda6e2c4bcd43d9f1d069f05b0`  
		Last Modified: Mon, 27 Jul 2026 21:37:12 GMT  
		Size: 103.4 MB (103391134 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:00def7de342ccb5919681783a54573ed37ae5d99704a552f045f2fa83a72791a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5242368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db639816f87bd4d139046d3da3d2c871e6bad6a452634d4454e609e9022ff8bb`

```dockerfile
```

-	Layers:
	-	`sha256:1bb179a271b3c42da21c8e0d392fcf2f1fe41717095fba22811cef1331918a05`  
		Last Modified: Mon, 27 Jul 2026 21:37:10 GMT  
		Size: 5.2 MB (5232910 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:803232abaa8d90a458920152f1bf27b8880ee6c653927d632302d5c591d4feab`  
		Last Modified: Mon, 27 Jul 2026 21:37:10 GMT  
		Size: 9.5 KB (9458 bytes)  
		MIME: application/vnd.in-toto+json
