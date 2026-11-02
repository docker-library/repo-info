## `amazoncorretto:21-headless`

```console
$ docker pull amazoncorretto@sha256:3a14963548c387d8b6966246030ad39b28f2176aefdd0f39319a395e0be868ef
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:21-headless` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:eacf40e33305f222bbf8d29f28bc666e0947874f4a93f12295771c2fcc8ea55b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.1 MB (144078594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1dee1a9445ed4f867a0a64148c4b176acf646fc1a9793779acb188b39d9287f1`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 02 Nov 2026 19:55:48 GMT
COPY /rootfs/ / # buildkit
# Mon, 02 Nov 2026 19:55:48 GMT
CMD ["/bin/bash"]
# Mon, 02 Nov 2026 20:11:42 GMT
ARG version=21.0.13.0.11-1
# Mon, 02 Nov 2026 20:11:42 GMT
ARG resource_version=21.0.13.0.11
# Mon, 02 Nov 2026 20:11:42 GMT
ARG package_version=1
# Mon, 02 Nov 2026 20:11:42 GMT
# ARGS: version=21.0.13.0.11-1 resource_version=21.0.13.0.11 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 02 Nov 2026 20:11:42 GMT
ENV LANG=C.UTF-8
# Mon, 02 Nov 2026 20:11:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
```

-	Layers:
	-	`sha256:36d0e51e1ea56325505d833f7d87567b6720c396e9a5742de0f157b063545163`  
		Last Modified: Sat, 31 Oct 2026 02:35:05 GMT  
		Size: 54.6 MB (54569615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75f0e8bf799060c6b8d1ded013b56c7be5e649ef93234032010b49094beaad95`  
		Last Modified: Mon, 02 Nov 2026 20:12:01 GMT  
		Size: 89.5 MB (89508979 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:5cd1aa8cdc34a4a9f8c36aa90b880a33a038b4494865abb6f54111698edf6aaa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5208007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb295d8acd225a5ab3f9df4ffeb751c9fc5be0d6f3768241394b100e62d02b12`

```dockerfile
```

-	Layers:
	-	`sha256:09f45b3ade915b26d8e30e169c1f47e0f28d3c3791d57a54f91c2c17190af7bd`  
		Last Modified: Mon, 02 Nov 2026 20:11:59 GMT  
		Size: 5.2 MB (5198744 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:736406b2fa35b47c0c682a1785cf1fe3c1ca1c9869f1ded717352d80f2361fd3`  
		Last Modified: Mon, 02 Nov 2026 20:11:58 GMT  
		Size: 9.3 KB (9263 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:21-headless` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:892bf616ce5784585db277078d39def796d755aa1f1ba70d45f453b197c11eec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.1 MB (142100749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a859c09ab82b021ad84f77040942c3102cb51bf7a2dbf99ee62fc1234da48c4`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 02 Nov 2026 19:55:47 GMT
COPY /rootfs/ / # buildkit
# Mon, 02 Nov 2026 19:55:47 GMT
CMD ["/bin/bash"]
# Mon, 02 Nov 2026 20:11:05 GMT
ARG version=21.0.13.0.11-1
# Mon, 02 Nov 2026 20:11:05 GMT
ARG resource_version=21.0.13.0.11
# Mon, 02 Nov 2026 20:11:05 GMT
ARG package_version=1
# Mon, 02 Nov 2026 20:11:05 GMT
# ARGS: version=21.0.13.0.11-1 resource_version=21.0.13.0.11 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 02 Nov 2026 20:11:05 GMT
ENV LANG=C.UTF-8
# Mon, 02 Nov 2026 20:11:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
```

-	Layers:
	-	`sha256:c1eee8f81fa5e953bb6eab0ff6f612967f0ef8b1dc9fac3cb2319b1021f7a245`  
		Last Modified: Sat, 31 Oct 2026 02:35:03 GMT  
		Size: 53.5 MB (53456123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e622ad3de978356c6cefaea22807570199a8942ed692ed8ad2d6fd9b87e2029`  
		Last Modified: Mon, 02 Nov 2026 20:11:25 GMT  
		Size: 88.6 MB (88644626 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:7594566f7921648fc2f6d365d8b5701ad817a8a3613f0db72b86812e18d1d328
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5206903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50bd8d52824eb1f904e695e27b8be37e27a376556871698cda7d126312147998`

```dockerfile
```

-	Layers:
	-	`sha256:3120357ae927b8f2a473114078b1bde23cde02426d22bb35fb349bedb14d5675`  
		Last Modified: Mon, 02 Nov 2026 20:11:22 GMT  
		Size: 5.2 MB (5197547 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ef43f08749490cecc17a619c346af3ea4ba83c2a5b6ae47a062743ea1133a249`  
		Last Modified: Mon, 02 Nov 2026 20:11:21 GMT  
		Size: 9.4 KB (9356 bytes)  
		MIME: application/vnd.in-toto+json
