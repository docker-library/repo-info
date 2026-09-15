## `amazoncorretto:25-headless`

```console
$ docker pull amazoncorretto@sha256:03135c74260b73f04b55ee8f6fa7e8e4415348b43479ebfa4125ac6443ec9e71
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:25-headless` - linux; amd64

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

### `amazoncorretto:25-headless` - unknown; unknown

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

### `amazoncorretto:25-headless` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:442c8a043d02405237a58582775f0e0ad8cc3c11feb9bb9992597c06c4204c4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.1 MB (156133291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fc3da91c10bcabf503b75b1e130b7b453db8dd13e6f5b4c5fcefb95281da70f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 14 Sep 2026 23:45:56 GMT
COPY /rootfs/ / # buildkit
# Mon, 14 Sep 2026 23:45:56 GMT
CMD ["/bin/bash"]
# Tue, 15 Sep 2026 00:12:18 GMT
ARG version=25.0.4.8-1
# Tue, 15 Sep 2026 00:12:18 GMT
ARG package_version=1
# Tue, 15 Sep 2026 00:12:18 GMT
# ARGS: version=25.0.4.8-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 15 Sep 2026 00:12:18 GMT
ENV LANG=C.UTF-8
# Tue, 15 Sep 2026 00:12:18 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
```

-	Layers:
	-	`sha256:6b98cf5afd5c5e1a58de351abf0b1ec3a4a61b63fd5a86c62edc6367d59ac249`  
		Last Modified: Mon, 31 Aug 2026 23:14:33 GMT  
		Size: 53.5 MB (53452573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07ffffbcefba7e176e536fb354749fee9eebd385705df434a0e2d146fc24c14d`  
		Last Modified: Tue, 15 Sep 2026 00:12:39 GMT  
		Size: 102.7 MB (102680718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:f30defd4f5a46d9eb06c1bc0ba22c230537d0259fca8a260a1890fffe7a3e7e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5216777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df9803e2a0bab3a27d5d8bb7f90d72c0e80a5c2c09fe3f75979a09a73d5a1da1`

```dockerfile
```

-	Layers:
	-	`sha256:8bc8f3f23aa6eeb6e3c8c78a5a6fe888de1f2a5939470cd2b603f4ba8a60c252`  
		Last Modified: Tue, 15 Sep 2026 00:12:37 GMT  
		Size: 5.2 MB (5207486 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e95d7ae8c9c14124cc5c22046d353e1f68444f5858cf50bc4eea47eb6289e29d`  
		Last Modified: Tue, 15 Sep 2026 00:12:36 GMT  
		Size: 9.3 KB (9291 bytes)  
		MIME: application/vnd.in-toto+json
