## `amazoncorretto:21-jdk`

```console
$ docker pull amazoncorretto@sha256:c446a1c9169ef5db6b140e165e471197301bcf9023c0f41bdf8cd56a5b9ec637
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:21-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:b191d7648ce3ee0d1936967aaa692e2949f94ee578d7667410f5cc971cdd04dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **225.3 MB (225316746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a376d465ae666a5f2e3be6785ac911eaff7fa43666629ed29b7968946d960101`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 05 Nov 2026 18:52:15 GMT
COPY /rootfs/ / # buildkit
# Thu, 05 Nov 2026 18:52:15 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 19:59:48 GMT
ARG version=21.0.13.0.11-1
# Thu, 05 Nov 2026 19:59:48 GMT
ARG resource_version=21.0.13.0.11
# Thu, 05 Nov 2026 19:59:48 GMT
ARG package_version=1
# Thu, 05 Nov 2026 19:59:48 GMT
# ARGS: version=21.0.13.0.11-1 resource_version=21.0.13.0.11 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 05 Nov 2026 19:59:48 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:59:48 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
```

-	Layers:
	-	`sha256:36d0e51e1ea56325505d833f7d87567b6720c396e9a5742de0f157b063545163`  
		Last Modified: Sat, 31 Oct 2026 02:35:05 GMT  
		Size: 54.6 MB (54569615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2d3e70dc3985fe5155874fee927fb0d515bda360e9e1ee6a73a034c1150b051`  
		Last Modified: Thu, 05 Nov 2026 20:00:19 GMT  
		Size: 170.7 MB (170747131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:43c9e06154718ddfac8c257e90e13e75cd934544e29b064e885ef456d9d5f3a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5342641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cde3453ccb13896b2c50a974a57b705cb6c05d8f13d8ec4d54ada90651a35c90`

```dockerfile
```

-	Layers:
	-	`sha256:d4ca10d77ef3cd6eb2039fa6d77ad286ff4a385c58b9196370df209f5e278c5f`  
		Last Modified: Thu, 05 Nov 2026 20:00:10 GMT  
		Size: 5.3 MB (5331923 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9e11e32f52465c3751eccdebf77a3db925d6d7c4f4fb45deeacc40fe3220b19c`  
		Last Modified: Thu, 05 Nov 2026 20:00:10 GMT  
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
