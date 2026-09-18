## `amazoncorretto:11-al2023-headless`

```console
$ docker pull amazoncorretto@sha256:622f92b7c5b7b40b12eba798d6bee5d53c9afca259856836f724450d5828ab70
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:11-al2023-headless` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:2bd1edf9531b46bfa4cf937f7e6f5b5ae260ec9e1eaead59966acc1e61facca4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.7 MB (130650878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83f2c733de2b5b6d36da762e088ab7af9ab0ab6b556612ce91ea477e31427d22`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 14 Sep 2026 23:46:16 GMT
COPY /rootfs/ / # buildkit
# Mon, 14 Sep 2026 23:46:16 GMT
CMD ["/bin/bash"]
# Tue, 15 Sep 2026 00:11:22 GMT
ARG version=11.0.32.10-1
# Tue, 15 Sep 2026 00:11:22 GMT
# ARGS: version=11.0.32.10-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 15 Sep 2026 00:11:22 GMT
ENV LANG=C.UTF-8
# Tue, 15 Sep 2026 00:11:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:0f0cc63a5845e28f771c9fceda4decc68b806470b009dae4085b441df0329b69`  
		Last Modified: Mon, 31 Aug 2026 23:14:18 GMT  
		Size: 54.6 MB (54586282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00d641d7716e707e793324c848e3951d30dd2c24fde5669a53dc91609158cbe8`  
		Last Modified: Tue, 15 Sep 2026 00:11:38 GMT  
		Size: 76.1 MB (76064596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-al2023-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:d11302288de34e60353a530998a7827590c9fb0f4b9561fc4fc5316ccca232cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5219326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:568448a73db24e8979b7f9e5e1d85c4a54ef1e29a16d3af25d5200b4bfdc004b`

```dockerfile
```

-	Layers:
	-	`sha256:1660263c629e8477d9e61f2150d8058cd362184178123dd6c00a0eed29b74c54`  
		Last Modified: Tue, 15 Sep 2026 00:11:36 GMT  
		Size: 5.2 MB (5210219 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2d5dc6fecf0f7a9bf9c8bd17b00c39ad99cdaa5c09531dbc07b56d675406206b`  
		Last Modified: Tue, 15 Sep 2026 00:11:35 GMT  
		Size: 9.1 KB (9107 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:11-al2023-headless` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:9cbaa8e855670a2630ca4eeda3672c392cc651c3182dcfcbf5bc0d2fbb201375
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.8 MB (128758459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c49110a39e562edb7898a0653af0204d26ba93c3c3d54353c9795ebc86d7a8f2`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 17 Sep 2026 21:12:44 GMT
COPY /rootfs/ / # buildkit
# Thu, 17 Sep 2026 21:12:44 GMT
CMD ["/bin/bash"]
# Thu, 17 Sep 2026 22:46:00 GMT
ARG version=11.0.32.10-1
# Thu, 17 Sep 2026 22:46:00 GMT
# ARGS: version=11.0.32.10-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 17 Sep 2026 22:46:00 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 22:46:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:6b98cf5afd5c5e1a58de351abf0b1ec3a4a61b63fd5a86c62edc6367d59ac249`  
		Last Modified: Mon, 31 Aug 2026 23:14:33 GMT  
		Size: 53.5 MB (53452573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2a34552b556d623f1d2078b4e8bece237d43fc073ddc4c33beca31d46e3b059`  
		Last Modified: Thu, 17 Sep 2026 22:46:17 GMT  
		Size: 75.3 MB (75305886 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-al2023-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:ee8203f43567a5b40556fd8153874cf14349b38c2d2e1b3be6684804517e072f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5219048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:638766993d9beef8d212f64db1ec3336ddfdeee881009097cba271e87f57a88e`

```dockerfile
```

-	Layers:
	-	`sha256:b0f42e147282eb200b6ef8acc72fb59d3816e213461ff8e7da8d78a175d58764`  
		Last Modified: Thu, 17 Sep 2026 22:46:15 GMT  
		Size: 5.2 MB (5209849 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:666186ab0332ce610b6a4f76cec938bac196b437bbf74afd680adb628f7e0f68`  
		Last Modified: Thu, 17 Sep 2026 22:46:15 GMT  
		Size: 9.2 KB (9199 bytes)  
		MIME: application/vnd.in-toto+json
