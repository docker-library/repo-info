## `amazoncorretto:21-al2023-headless`

```console
$ docker pull amazoncorretto@sha256:5085e890043da2b63af83b0fa7259b90e6687f867db2deed628f1b68c798cadb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:21-al2023-headless` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:525698986f8d95f57d65a2dbb5ebc1388db68738fb4fa348598d3e6965e561e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.1 MB (144084918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee4b3259e862aa399fca263b23efaf727199b21c65762a00a8f2ed03236c67ad`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 18 Nov 2026 21:16:24 GMT
COPY /rootfs/ / # buildkit
# Wed, 18 Nov 2026 21:16:24 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 21:34:42 GMT
ARG version=21.0.13.1.2-1
# Wed, 18 Nov 2026 21:34:42 GMT
ARG resource_version=21.0.13.1.2
# Wed, 18 Nov 2026 21:34:42 GMT
ARG package_version=1
# Wed, 18 Nov 2026 21:34:42 GMT
# ARGS: version=21.0.13.1.2-1 resource_version=21.0.13.1.2 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 18 Nov 2026 21:34:42 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 21:34:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
```

-	Layers:
	-	`sha256:48c7a3aa33f84b2fa7af701f558c0a97251fe0ca6790119c6f912decc8cad76d`  
		Last Modified: Tue, 17 Nov 2026 23:01:37 GMT  
		Size: 54.6 MB (54569091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b48d6f8dbdf6a5c276df4d54a5767066bd26f592902106a89e3fbf30eb6db935`  
		Last Modified: Wed, 18 Nov 2026 21:34:59 GMT  
		Size: 89.5 MB (89515827 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-al2023-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:57fb0458e9d900ee7bf2993515a9ab9bfda56da78841d8f08d29e0876c4fbdfd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5208016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b4605e7866bb404ed8b10f831d8a902c3f0eb16fd019471de83d0e85a81e4b4`

```dockerfile
```

-	Layers:
	-	`sha256:14b027b58b0056fe0e626cd9a8953e0bc840abcf9ae90f7900c78ee216173c36`  
		Last Modified: Wed, 18 Nov 2026 21:34:57 GMT  
		Size: 5.2 MB (5198754 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:150daeb3496f172a9549cbd9f6614608bd830b69a02f2c560781f365df0f2af4`  
		Last Modified: Wed, 18 Nov 2026 21:34:57 GMT  
		Size: 9.3 KB (9262 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:21-al2023-headless` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:b6df5eb5c79dd69b6e07b4ab5f9d2de1896cb2ab2fa72b1b4d64d619f82fd814
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.1 MB (142099448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f2dc22fe4028d299920e9496e215e2bf1888e15b4c3e6828ab6c825e82a659d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 18 Nov 2026 21:16:23 GMT
COPY /rootfs/ / # buildkit
# Wed, 18 Nov 2026 21:16:23 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 21:35:19 GMT
ARG version=21.0.13.1.2-1
# Wed, 18 Nov 2026 21:35:19 GMT
ARG resource_version=21.0.13.1.2
# Wed, 18 Nov 2026 21:35:19 GMT
ARG package_version=1
# Wed, 18 Nov 2026 21:35:19 GMT
# ARGS: version=21.0.13.1.2-1 resource_version=21.0.13.1.2 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 18 Nov 2026 21:35:19 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 21:35:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
```

-	Layers:
	-	`sha256:7dd5afb185e9abad9919aa0d5eaa430bb9babdb805532cdb871320227597f486`  
		Last Modified: Wed, 18 Nov 2026 01:44:00 GMT  
		Size: 53.5 MB (53453550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78e558254d83e9f478cddf28d013a0b3b2e205c54b512f4dabea141f10e3a58d`  
		Last Modified: Wed, 18 Nov 2026 21:35:37 GMT  
		Size: 88.6 MB (88645898 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-al2023-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:d6a7d91af39fa0741725fed4695a68a1dfd1d30a0004daf4352109b32b10459a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5206910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f77f3846890ef1aacadc455d5e2e2ab6c68a6b6fe50826a262b73504e41aa3c`

```dockerfile
```

-	Layers:
	-	`sha256:f4299739b57ddde51cd60f1ac2f45758591a22880c5f2aa011188760908cbd87`  
		Last Modified: Wed, 18 Nov 2026 21:35:35 GMT  
		Size: 5.2 MB (5197557 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:047a13acba1124a00c12b5eb6c10a5e9e61ea1d224e7ffaa3ec2b8e8c3b795d3`  
		Last Modified: Wed, 18 Nov 2026 21:35:35 GMT  
		Size: 9.4 KB (9353 bytes)  
		MIME: application/vnd.in-toto+json
