## `amazoncorretto:26-headful`

```console
$ docker pull amazoncorretto@sha256:4eaa1495d1ddea2b5f1fece24e23c1feb2d4e5518793bd7752d87eef4fa1ab03
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:26-headful` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:019740f6ef9b265f732a4f2d267c8c1bbe3598372950ff287727efce8e7b55b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.2 MB (161202916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e37e1ae84e132af597bbf02149a6cd19b1963f9268838dd5fb68168a8c5462ad`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 14 Sep 2026 23:46:16 GMT
COPY /rootfs/ / # buildkit
# Mon, 14 Sep 2026 23:46:16 GMT
CMD ["/bin/bash"]
# Tue, 15 Sep 2026 00:12:59 GMT
ARG version=26.0.2.11-1
# Tue, 15 Sep 2026 00:12:59 GMT
ARG package_version=1
# Tue, 15 Sep 2026 00:12:59 GMT
# ARGS: version=26.0.2.11-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-26-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-26-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-26-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 15 Sep 2026 00:12:59 GMT
ENV LANG=C.UTF-8
# Tue, 15 Sep 2026 00:12:59 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-26-amazon-corretto
```

-	Layers:
	-	`sha256:0f0cc63a5845e28f771c9fceda4decc68b806470b009dae4085b441df0329b69`  
		Last Modified: Mon, 31 Aug 2026 23:14:18 GMT  
		Size: 54.6 MB (54586282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:962fbb8734bb7137ee1716a46e7b20e02ce8e487abff34c0cfcd741a60f744bd`  
		Last Modified: Tue, 15 Sep 2026 00:13:17 GMT  
		Size: 106.6 MB (106616634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:26-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:73a282fef5c23a9283ea7d9d6fc277e8beb14348e6e949fe2f0d39aef3f59550
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5241831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9a90f687e3dee92f784e48760992331ec0f16f25ecad9b5cc2beb8edd1236cf`

```dockerfile
```

-	Layers:
	-	`sha256:437409bca6b9f61f5ce39a1d937165c9c94d6f4c0490559d74e896e594ad2ea1`  
		Last Modified: Tue, 15 Sep 2026 00:13:15 GMT  
		Size: 5.2 MB (5232463 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5b05d7b4594ff7aa41aeda037a86c12578f80215e75a9507270a9e4a5761c93d`  
		Last Modified: Tue, 15 Sep 2026 00:13:15 GMT  
		Size: 9.4 KB (9368 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:26-headful` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:76a3cf57add1602a1b5ff6e6f931010a8b8566ac58faed6e875665ab56a9c5de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.0 MB (158974992 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:520ec517e6cc4b656f492195a9c374dd65f0da45aadb0fef66d4b05339f2de3d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 14 Sep 2026 23:45:56 GMT
COPY /rootfs/ / # buildkit
# Mon, 14 Sep 2026 23:45:56 GMT
CMD ["/bin/bash"]
# Tue, 15 Sep 2026 00:12:43 GMT
ARG version=26.0.2.11-1
# Tue, 15 Sep 2026 00:12:43 GMT
ARG package_version=1
# Tue, 15 Sep 2026 00:12:43 GMT
# ARGS: version=26.0.2.11-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-26-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-26-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-26-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 15 Sep 2026 00:12:43 GMT
ENV LANG=C.UTF-8
# Tue, 15 Sep 2026 00:12:43 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-26-amazon-corretto
```

-	Layers:
	-	`sha256:6b98cf5afd5c5e1a58de351abf0b1ec3a4a61b63fd5a86c62edc6367d59ac249`  
		Last Modified: Mon, 31 Aug 2026 23:14:33 GMT  
		Size: 53.5 MB (53452573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0f5d06841b07fb1527ae4f85fb85737c6f6aa19b6e50d7d275a7eaf83661fe3`  
		Last Modified: Tue, 15 Sep 2026 00:13:04 GMT  
		Size: 105.5 MB (105522419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:26-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:e791a1158fa8c96990e1cf785e02f6297e63e33cbbb1b58cdadf358671d344b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5240736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cb2ac31ef93fe866eb0da528a16b881aa3889642547d027d86827a5b1880eca`

```dockerfile
```

-	Layers:
	-	`sha256:6df0b0759e8992a24352eac68a23b46590be93df0b0f77ffcff4356c4fbd8fc3`  
		Last Modified: Tue, 15 Sep 2026 00:13:01 GMT  
		Size: 5.2 MB (5231276 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:69e4b1f418bfe5aeac540d9264662c72db685e1f0eb676fdbe9e674a72a310dd`  
		Last Modified: Tue, 15 Sep 2026 00:13:01 GMT  
		Size: 9.5 KB (9460 bytes)  
		MIME: application/vnd.in-toto+json
