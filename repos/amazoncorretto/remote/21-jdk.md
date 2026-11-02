## `amazoncorretto:21-jdk`

```console
$ docker pull amazoncorretto@sha256:f9a740a8c4b33f8356490a533618dbd0f2a3e72442de309c73572d9b1e4b40fa
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:21-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:da47ea450d6b4222c87e5ec224a84301409fd76a2d98e2317a88fb9cd888b159
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **225.3 MB (225316785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c6869b63e4bf3ae34905b673d77de2439af7c6dd7be442ceb2bf5fe4806f44e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 02 Nov 2026 19:55:48 GMT
COPY /rootfs/ / # buildkit
# Mon, 02 Nov 2026 19:55:48 GMT
CMD ["/bin/bash"]
# Mon, 02 Nov 2026 20:11:37 GMT
ARG version=21.0.13.0.11-1
# Mon, 02 Nov 2026 20:11:37 GMT
ARG resource_version=21.0.13.0.11
# Mon, 02 Nov 2026 20:11:37 GMT
ARG package_version=1
# Mon, 02 Nov 2026 20:11:37 GMT
# ARGS: version=21.0.13.0.11-1 resource_version=21.0.13.0.11 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 02 Nov 2026 20:11:37 GMT
ENV LANG=C.UTF-8
# Mon, 02 Nov 2026 20:11:37 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
```

-	Layers:
	-	`sha256:36d0e51e1ea56325505d833f7d87567b6720c396e9a5742de0f157b063545163`  
		Last Modified: Sat, 31 Oct 2026 02:35:05 GMT  
		Size: 54.6 MB (54569615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47013ed06cba49f05f3e9f3318fa114d951542fce9a76fce834c5e780eac4a9d`  
		Last Modified: Mon, 02 Nov 2026 20:12:02 GMT  
		Size: 170.7 MB (170747170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:5ad877d40e5ee073b0cddd26651c7bb7c21267c15c6fac3f6cb498376cc3df4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5342641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5fae116743e4213f92f9bcc79f0f096c6f1e4c3db074e7e9900d625b267c49f`

```dockerfile
```

-	Layers:
	-	`sha256:3d7f6b01caa9bfb3d8b088ba8214d73b1d18d13daf53c8faba5c8417b58363f9`  
		Last Modified: Mon, 02 Nov 2026 20:11:56 GMT  
		Size: 5.3 MB (5331923 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:856ee025f3e77e89ee9f60cc40019a9367a297b7761d65434305e63b01f2b43c`  
		Last Modified: Mon, 02 Nov 2026 20:11:56 GMT  
		Size: 10.7 KB (10718 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:21-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:3e3017180abdb92fac39bc6c5fb321b2602d422d31c79b1a37b06caebb6d49e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **222.5 MB (222475110 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f258316e9ea15066c5def55f61274fdfd07b4fc67036930b010d7d5e7abde2fb`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 02 Nov 2026 19:55:47 GMT
COPY /rootfs/ / # buildkit
# Mon, 02 Nov 2026 19:55:47 GMT
CMD ["/bin/bash"]
# Mon, 02 Nov 2026 20:11:10 GMT
ARG version=21.0.13.0.11-1
# Mon, 02 Nov 2026 20:11:10 GMT
ARG resource_version=21.0.13.0.11
# Mon, 02 Nov 2026 20:11:10 GMT
ARG package_version=1
# Mon, 02 Nov 2026 20:11:10 GMT
# ARGS: version=21.0.13.0.11-1 resource_version=21.0.13.0.11 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 02 Nov 2026 20:11:10 GMT
ENV LANG=C.UTF-8
# Mon, 02 Nov 2026 20:11:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
```

-	Layers:
	-	`sha256:c1eee8f81fa5e953bb6eab0ff6f612967f0ef8b1dc9fac3cb2319b1021f7a245`  
		Last Modified: Sat, 31 Oct 2026 02:35:03 GMT  
		Size: 53.5 MB (53456123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8bd08fd180f162c125ccf9c1674915d47bb6e31bd116c345a8c055d06e15049`  
		Last Modified: Mon, 02 Nov 2026 20:11:33 GMT  
		Size: 169.0 MB (169018987 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:ca97b04a809f778b626a7690a9f91c18f83102abe989dbff7f31d5f4f589890e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5341739 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a36058238533b97ecfa5b54d590b8d4882d88c0394c694cc8b0ddca44efc0b2e`

```dockerfile
```

-	Layers:
	-	`sha256:433b36275f8d0456d773757856d4ec1948ae4165df90449dcfc7726455e2522f`  
		Last Modified: Mon, 02 Nov 2026 20:11:29 GMT  
		Size: 5.3 MB (5330893 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:066712d0c838f2041567d7df3a419e437f821b5aeafb7e1d3381c2b0b45ce7ae`  
		Last Modified: Mon, 02 Nov 2026 20:11:29 GMT  
		Size: 10.8 KB (10846 bytes)  
		MIME: application/vnd.in-toto+json
