## `amazoncorretto:26-al2023-headless`

```console
$ docker pull amazoncorretto@sha256:23a497be708eefbaa004f82fc163e059f68b9cae96fdfde42aac68aaeade1b0e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:26-al2023-headless` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:98916fb75cd096448f23d89a3e3b7c79f81afece644ab9aaf73fec326946aeb1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.5 MB (160501503 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5598a5638bdcfd5142a5bff3c393147157d9f623e670185be21cbc804c78d532`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 20 Aug 2026 16:55:33 GMT
COPY /rootfs/ / # buildkit
# Thu, 20 Aug 2026 16:55:33 GMT
CMD ["/bin/bash"]
# Thu, 20 Aug 2026 17:21:45 GMT
ARG version=26.0.2.11-1
# Thu, 20 Aug 2026 17:21:45 GMT
ARG package_version=1
# Thu, 20 Aug 2026 17:21:45 GMT
# ARGS: version=26.0.2.11-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-26-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-26-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 20 Aug 2026 17:21:45 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:21:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-26-amazon-corretto
```

-	Layers:
	-	`sha256:f206cad061713321049e1fe0c85223e018266fd8bccebf3156ef94c125bbd2e0`  
		Last Modified: Mon, 17 Aug 2026 23:42:26 GMT  
		Size: 54.6 MB (54583847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:062eb96f1d36bcbc67e7d1b148e00517dd26df072cbc1b3fd9c4bea324b9633e`  
		Last Modified: Thu, 20 Aug 2026 17:22:05 GMT  
		Size: 105.9 MB (105917656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:26-al2023-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:013791109263d3ada6875d27ffcca3f821d55e7ca47a89c305db056755d71038
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5216236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37df66f364e9f83cdfb216d615f38b1aeac5bb791a74dc32dff808337897da78`

```dockerfile
```

-	Layers:
	-	`sha256:485a36d6ce1213414ad8858d8330ebec17f530cf1743ee70a6f61bb31bfddde2`  
		Last Modified: Thu, 20 Aug 2026 17:22:02 GMT  
		Size: 5.2 MB (5207036 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8e257668f9e8bb3825625b1aee69d3b2edd36803008f9040a406f9b1782ac4c7`  
		Last Modified: Thu, 20 Aug 2026 17:22:02 GMT  
		Size: 9.2 KB (9200 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:26-al2023-headless` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:d982231cf08435c44d849b710e641eac052f6a04e66cd28f9367fc5702fd4078
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.2 MB (158247331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6713d3213dc377dfc042dc734bc6032f8bf1e4ea106ce34d8ce638a991b7ccd`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 20 Aug 2026 16:55:33 GMT
COPY /rootfs/ / # buildkit
# Thu, 20 Aug 2026 16:55:33 GMT
CMD ["/bin/bash"]
# Thu, 20 Aug 2026 17:18:47 GMT
ARG version=26.0.2.11-1
# Thu, 20 Aug 2026 17:18:47 GMT
ARG package_version=1
# Thu, 20 Aug 2026 17:18:47 GMT
# ARGS: version=26.0.2.11-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-26-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-26-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 20 Aug 2026 17:18:47 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:18:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-26-amazon-corretto
```

-	Layers:
	-	`sha256:108a276670f119053938f97626b5d9916306b34861b9c0cdd8d64a50bf504ad8`  
		Last Modified: Mon, 17 Aug 2026 23:42:41 GMT  
		Size: 53.5 MB (53450887 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fefc4692c4cda8538994b64bae553d52802180a7e8fcb5e9b0d7273ad17a96b2`  
		Last Modified: Thu, 20 Aug 2026 17:19:07 GMT  
		Size: 104.8 MB (104796444 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:26-al2023-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:672f05a650135754b9e597ed7f9d5d1b98de2753063c851051e95fd206bf0642
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5215137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ca43e1a2a7e619676345e80883e181198398d32f3b995724773246d1863a8bf`

```dockerfile
```

-	Layers:
	-	`sha256:6ba664a3f325343dac61a20c22ee5f4ba542443b5098fd60bf7f1b9e1f642f56`  
		Last Modified: Thu, 20 Aug 2026 17:19:05 GMT  
		Size: 5.2 MB (5205846 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8fb5638ba5d67ab84037fec332ae87d0be71f6641f311d5806069ac5d850e624`  
		Last Modified: Thu, 20 Aug 2026 17:19:05 GMT  
		Size: 9.3 KB (9291 bytes)  
		MIME: application/vnd.in-toto+json
