## `amazoncorretto:25-al2023-headful`

```console
$ docker pull amazoncorretto@sha256:bcf4db75188feb086078e50c40f3ae925adde0f7b833d45977604180f31e4378
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:25-al2023-headful` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:e992e301bdef14464520316abd940e6b8536c79941d12aa2f89a71c5bf260483
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.1 MB (159139606 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07a2646238dbeb101369cc9f8738ff6b7580cbb2a3906f147d7d8a6edbd7ea12`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 02 Nov 2026 19:55:48 GMT
COPY /rootfs/ / # buildkit
# Mon, 02 Nov 2026 19:55:48 GMT
CMD ["/bin/bash"]
# Mon, 02 Nov 2026 20:11:52 GMT
ARG version=25.0.5.0.10-1
# Mon, 02 Nov 2026 20:11:52 GMT
ARG resource_version=25.0.5.0.10
# Mon, 02 Nov 2026 20:11:52 GMT
ARG package_version=1
# Mon, 02 Nov 2026 20:11:52 GMT
# ARGS: version=25.0.5.0.10-1 resource_version=25.0.5.0.10 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 02 Nov 2026 20:11:52 GMT
ENV LANG=C.UTF-8
# Mon, 02 Nov 2026 20:11:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
```

-	Layers:
	-	`sha256:36d0e51e1ea56325505d833f7d87567b6720c396e9a5742de0f157b063545163`  
		Last Modified: Sat, 31 Oct 2026 02:35:05 GMT  
		Size: 54.6 MB (54569615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7805962be62b05a9745da4fcf412e4e6084fdb64c49e6dd18ce1761ac4491be6`  
		Last Modified: Mon, 02 Nov 2026 20:12:11 GMT  
		Size: 104.6 MB (104569991 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-al2023-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:b623ada7a6bff25de9f4347529aa2cbb6b5966de1caee2d28305b2e8c42d8544
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5243544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:beb9e4bdde774667a84131a5d7b33e763fc5bf70eb3f99cd0d5913cd5e36679b`

```dockerfile
```

-	Layers:
	-	`sha256:63865c779dda348959a6a4b32fa5b434a6f92f7786d040ea39904ba6ecbbaf63`  
		Last Modified: Mon, 02 Nov 2026 20:12:09 GMT  
		Size: 5.2 MB (5234114 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:143ae99842b91fe844b420bd70b0f1af341dbd18b017ad773f84054be8fe0ac9`  
		Last Modified: Mon, 02 Nov 2026 20:12:08 GMT  
		Size: 9.4 KB (9430 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:25-al2023-headful` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:e12b33844a557553c50f302423f51abddd5e27d4244f41659f59ad435f39e06b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.0 MB (156956389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2139b9f3426e0821719f473ab1a280180cf0d4510f6c83afb176bb280a867aa3`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 02 Nov 2026 19:55:47 GMT
COPY /rootfs/ / # buildkit
# Mon, 02 Nov 2026 19:55:47 GMT
CMD ["/bin/bash"]
# Mon, 02 Nov 2026 20:11:32 GMT
ARG version=25.0.5.0.10-1
# Mon, 02 Nov 2026 20:11:32 GMT
ARG resource_version=25.0.5.0.10
# Mon, 02 Nov 2026 20:11:32 GMT
ARG package_version=1
# Mon, 02 Nov 2026 20:11:32 GMT
# ARGS: version=25.0.5.0.10-1 resource_version=25.0.5.0.10 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 02 Nov 2026 20:11:32 GMT
ENV LANG=C.UTF-8
# Mon, 02 Nov 2026 20:11:32 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
```

-	Layers:
	-	`sha256:c1eee8f81fa5e953bb6eab0ff6f612967f0ef8b1dc9fac3cb2319b1021f7a245`  
		Last Modified: Sat, 31 Oct 2026 02:35:03 GMT  
		Size: 53.5 MB (53456123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9051d6d20d2ae68512d9b980a7ac75cc8313dceebf84ef61477f0d8273b8480f`  
		Last Modified: Mon, 02 Nov 2026 20:11:54 GMT  
		Size: 103.5 MB (103500266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-al2023-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:4a97e4f1bc8f0ad8dfe8dc5da08a26b55c92c06b7761b3ca5dfc672a8a656f1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5242451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f053e1ab6331897859cfc8d4a6a91dc347f29910feac433ea5abcdd6be55c77a`

```dockerfile
```

-	Layers:
	-	`sha256:a2754d1520a3fef353da59f89b8551b657076b600408c94fb39c8278282836d5`  
		Last Modified: Mon, 02 Nov 2026 20:11:51 GMT  
		Size: 5.2 MB (5232929 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fc148fdafc23bfff34d0bb7d664957cc6dcc620092f4d3e534a0b796c0ab2462`  
		Last Modified: Mon, 02 Nov 2026 20:11:51 GMT  
		Size: 9.5 KB (9522 bytes)  
		MIME: application/vnd.in-toto+json
