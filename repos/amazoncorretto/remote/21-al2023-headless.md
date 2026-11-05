## `amazoncorretto:21-al2023-headless`

```console
$ docker pull amazoncorretto@sha256:f33ab2733357b746a45f824fddd19d5e6b81b176804789361588ee3bbea5f34d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:21-al2023-headless` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:249c8562d07956ea4afddc3eec9198cd59fabe0f996530feab7f716dac1ace79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.1 MB (144078499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a64f2e447a9b5a578550ed548e3353b263da2a6dfa37818fccc5c60c1fc94919`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 05 Nov 2026 18:52:15 GMT
COPY /rootfs/ / # buildkit
# Thu, 05 Nov 2026 18:52:15 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 19:59:47 GMT
ARG version=21.0.13.0.11-1
# Thu, 05 Nov 2026 19:59:47 GMT
ARG resource_version=21.0.13.0.11
# Thu, 05 Nov 2026 19:59:47 GMT
ARG package_version=1
# Thu, 05 Nov 2026 19:59:47 GMT
# ARGS: version=21.0.13.0.11-1 resource_version=21.0.13.0.11 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 05 Nov 2026 19:59:47 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:59:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
```

-	Layers:
	-	`sha256:36d0e51e1ea56325505d833f7d87567b6720c396e9a5742de0f157b063545163`  
		Last Modified: Sat, 31 Oct 2026 02:35:05 GMT  
		Size: 54.6 MB (54569615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cf8c00186518b5fed32b815728ae770765baf092ce8895dd4ceb437270cd115`  
		Last Modified: Thu, 05 Nov 2026 20:00:11 GMT  
		Size: 89.5 MB (89508884 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-al2023-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:9d28c560eea23a8c735a36e76eb02e014fe39a9711bda3ecf10e1f1e70f47090
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5208008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1739f208ec3269fa2ed0fb5a5a68f831b658cca9e6badd28134610e292ebf7ed`

```dockerfile
```

-	Layers:
	-	`sha256:fef558d222e705e5a9e04cfae9e867a314e4b149a5997282271e6ea03bef0603`  
		Last Modified: Thu, 05 Nov 2026 20:00:09 GMT  
		Size: 5.2 MB (5198744 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3cd65bbbc76787641242e5608b65dc47e4cbe9b55f67c750e9256127a5114a6b`  
		Last Modified: Thu, 05 Nov 2026 20:00:11 GMT  
		Size: 9.3 KB (9264 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:21-al2023-headless` - linux; arm64 variant v8

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

### `amazoncorretto:21-al2023-headless` - unknown; unknown

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
