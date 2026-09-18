## `amazoncorretto:25-al2023-headless`

```console
$ docker pull amazoncorretto@sha256:3ef2de7bcaea3fc7d3750a640cf358b1f7558a8e779b905dc3071a2eb1540bc8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:25-al2023-headless` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:3a0dde9680e569fec11fe50623f1f95722c3f5a35bbfc1a3f2a53f6278aa76a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.3 MB (158340310 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b3372053ef89fcd53c50153463ce3a67a04579c43ef2876940af251d7d7add7`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 14 Sep 2026 23:46:16 GMT
COPY /rootfs/ / # buildkit
# Mon, 14 Sep 2026 23:46:16 GMT
CMD ["/bin/bash"]
# Tue, 15 Sep 2026 00:12:32 GMT
ARG version=25.0.4.8-1
# Tue, 15 Sep 2026 00:12:32 GMT
ARG package_version=1
# Tue, 15 Sep 2026 00:12:32 GMT
# ARGS: version=25.0.4.8-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 15 Sep 2026 00:12:32 GMT
ENV LANG=C.UTF-8
# Tue, 15 Sep 2026 00:12:32 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
```

-	Layers:
	-	`sha256:0f0cc63a5845e28f771c9fceda4decc68b806470b009dae4085b441df0329b69`  
		Last Modified: Mon, 31 Aug 2026 23:14:18 GMT  
		Size: 54.6 MB (54586282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7cdfcf32e88b0a39a5e7c2be3bb026380119f12a36c0c97e1d1cf328da5d0a27`  
		Last Modified: Tue, 15 Sep 2026 00:12:51 GMT  
		Size: 103.8 MB (103754028 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-al2023-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:65d3f515a6c6c4942b61e9b912b2ee4d53500903af9fe398f294e3925c9d1823
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5217873 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd2f55f1c5b9e0935652beec7745b63d03e587efca3a26ee2ca023f93cba61b6`

```dockerfile
```

-	Layers:
	-	`sha256:4a8e54e6272c805ede5ef9a8fee310343386cd9211ef8c68e4a6f219382aa681`  
		Last Modified: Tue, 15 Sep 2026 00:12:48 GMT  
		Size: 5.2 MB (5208674 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6d55dfe4054c7c22a153f2c514d1d28e2d0006eb0b8c93e71c455eef4ccf1dab`  
		Last Modified: Tue, 15 Sep 2026 00:12:48 GMT  
		Size: 9.2 KB (9199 bytes)  
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
