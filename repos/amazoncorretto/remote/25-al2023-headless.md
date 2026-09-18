## `amazoncorretto:25-al2023-headless`

```console
$ docker pull amazoncorretto@sha256:20c39e38c1e4ef2e2db1e725099fd456686772f7869c6e0bd67cc2e38cbf1661
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:25-al2023-headless` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:65ba3fd077f648d299d8c5cb56ab2c2d603f4a2567dccc157e3c1d4ad4a6b331
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.3 MB (158340304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02063a1d29eabefa756e72c0be2ed25ecb44edfb6cc5473893564ba2822cb138`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 17 Sep 2026 21:13:04 GMT
COPY /rootfs/ / # buildkit
# Thu, 17 Sep 2026 21:13:04 GMT
CMD ["/bin/bash"]
# Thu, 17 Sep 2026 22:22:58 GMT
ARG version=25.0.4.8-1
# Thu, 17 Sep 2026 22:22:58 GMT
ARG package_version=1
# Thu, 17 Sep 2026 22:22:58 GMT
# ARGS: version=25.0.4.8-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 17 Sep 2026 22:22:58 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 22:22:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
```

-	Layers:
	-	`sha256:0f0cc63a5845e28f771c9fceda4decc68b806470b009dae4085b441df0329b69`  
		Last Modified: Mon, 31 Aug 2026 23:14:18 GMT  
		Size: 54.6 MB (54586282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcbe04eda6c0f1132d121bf38093289640b4cc101a7375ee87c15d50b756d70f`  
		Last Modified: Thu, 17 Sep 2026 22:23:18 GMT  
		Size: 103.8 MB (103754022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-al2023-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:5f989990824b54c551f032e01f7f0d6aff0d2d9917b25c434a896f3031659b0e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5217872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41e07b014cfcd329dd894ccb3d0e8a1b16ac4f1fefb2104bfb511e45fb394d7a`

```dockerfile
```

-	Layers:
	-	`sha256:7c28406cf458b9d7ffe60f83fb0b9fcb32f396e776a8c25223482b5a3f668671`  
		Last Modified: Thu, 17 Sep 2026 22:23:16 GMT  
		Size: 5.2 MB (5208674 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3cce7299811aa4e8533c15bbe4da68a19dd1c29636a063c1e20a9f21853b640b`  
		Last Modified: Thu, 17 Sep 2026 22:23:16 GMT  
		Size: 9.2 KB (9198 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:25-al2023-headless` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:b5b8335b80d919f0c532f4e5dc59d8c2c40903eb59655a76eb58ea8c836d8271
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.1 MB (156133301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d253b09204f75139019e329718951c46e812e176b2e7f8a4c8822d6f9312e36`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 17 Sep 2026 21:12:44 GMT
COPY /rootfs/ / # buildkit
# Thu, 17 Sep 2026 21:12:44 GMT
CMD ["/bin/bash"]
# Thu, 17 Sep 2026 22:47:24 GMT
ARG version=25.0.4.8-1
# Thu, 17 Sep 2026 22:47:24 GMT
ARG package_version=1
# Thu, 17 Sep 2026 22:47:24 GMT
# ARGS: version=25.0.4.8-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 17 Sep 2026 22:47:24 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 22:47:24 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
```

-	Layers:
	-	`sha256:6b98cf5afd5c5e1a58de351abf0b1ec3a4a61b63fd5a86c62edc6367d59ac249`  
		Last Modified: Mon, 31 Aug 2026 23:14:33 GMT  
		Size: 53.5 MB (53452573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2cd6607fe93d307af44b7eeec05059167fb5602ca3da0f310b63421f78d15b3`  
		Last Modified: Thu, 17 Sep 2026 22:47:44 GMT  
		Size: 102.7 MB (102680728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-al2023-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:6811d06950b9d1111d695e6af5ecc5c6ab838c18f8d969065cb30b52bd7dd09f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5216777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af207b6b99e6f873547302fed0448ad70871ea9e0c6a8422191629d6d47bed2d`

```dockerfile
```

-	Layers:
	-	`sha256:bae9d630ea5431c653fed12b081a238a1787b5a02036201a2c9c76a75175ae7d`  
		Last Modified: Thu, 17 Sep 2026 22:47:42 GMT  
		Size: 5.2 MB (5207486 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7e2a47e5af7c6074742f66e149fa57e4e354f4509460733ffb7e0c9e0fe0b7ee`  
		Last Modified: Thu, 17 Sep 2026 22:47:42 GMT  
		Size: 9.3 KB (9291 bytes)  
		MIME: application/vnd.in-toto+json
