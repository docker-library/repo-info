## `amazoncorretto:11-headless`

```console
$ docker pull amazoncorretto@sha256:60476c89f31bb4d885d8bb9f6a6a665d5f6638d706df4e6df9890edb098fbaa2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:11-headless` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:862934d21683c64abf7c414f9c5a1ffdd67d4d99d1d631407c841ea0cf1a61df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.7 MB (130717918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69d1a39dc3af5f1fcfb17519f79aaa5b70ab0267b05a30ab89d4198c467fa451`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 21 Oct 2026 22:45:19 GMT
COPY /rootfs/ / # buildkit
# Wed, 21 Oct 2026 22:45:19 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 23:27:45 GMT
ARG version=11.0.32.13-1
# Wed, 21 Oct 2026 23:27:45 GMT
# ARGS: version=11.0.32.13-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 21 Oct 2026 23:27:45 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 23:27:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:7234d0a9b6ba1270c7bb653ee62a443a1dbb6fdfa833336edd3c0691c2524d1f`  
		Last Modified: Thu, 01 Oct 2026 02:22:29 GMT  
		Size: 54.6 MB (54630770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8679313b4915341e42aa20e9293bc1d2f15f98ef9b031242be8bb2122a7a05a2`  
		Last Modified: Wed, 21 Oct 2026 23:28:01 GMT  
		Size: 76.1 MB (76087148 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:d3b48b41c7abc7a0a016649f7d3c77ec9ddf6d255dde8a79e4cc88cd7c4a13d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5219326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0eb3c556f51225b9583cde1b4c44c5b711add9f953760a637d9d42c1c5fe7965`

```dockerfile
```

-	Layers:
	-	`sha256:98255fdd7db61cd423e043774a8218859d68ec9612cd760cff73cf69db08fb80`  
		Last Modified: Wed, 21 Oct 2026 23:27:59 GMT  
		Size: 5.2 MB (5210220 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:198d26f226d74542b6704bfc188b603b674c72e68d1b3db51e6792d3217ece8b`  
		Last Modified: Wed, 21 Oct 2026 23:27:59 GMT  
		Size: 9.1 KB (9106 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:11-headless` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:fcb74b8992303fd2e6ed96530fd2ea55a04950c229277b67466f5a7e17931a30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.8 MB (128839194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8a565266c4e07b9f883ef56ea58ae2211ca61a77ffbff58fca43a1258945f71`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 21 Oct 2026 23:11:39 GMT
COPY /rootfs/ / # buildkit
# Wed, 21 Oct 2026 23:11:39 GMT
CMD ["/bin/bash"]
# Thu, 22 Oct 2026 00:19:23 GMT
ARG version=11.0.32.13-1
# Thu, 22 Oct 2026 00:19:23 GMT
# ARGS: version=11.0.32.13-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 22 Oct 2026 00:19:23 GMT
ENV LANG=C.UTF-8
# Thu, 22 Oct 2026 00:19:23 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:3009834f3cf8cead1d3dea9d3cbebc711c021c4aed04759be014247a0c3181e7`  
		Last Modified: Thu, 01 Oct 2026 02:22:31 GMT  
		Size: 53.5 MB (53504398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46f03d0d9679ef233167cb0b961fde5f5aad7206319bb81b11a86a06f4502bb8`  
		Last Modified: Thu, 22 Oct 2026 00:19:41 GMT  
		Size: 75.3 MB (75334796 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:76df4ba5e6899408f9ce74958ff4ff47dbd579a520db3c69e1ff72b44e378a88
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5219049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d41069f32f8d247c88ef20943d533c0b7f26219481b5b87407f940c7a3b82ccb`

```dockerfile
```

-	Layers:
	-	`sha256:ee7b66c5b3767777d2e7789eb482cdf2485daa3c3725e5437842f0335829d1f3`  
		Last Modified: Thu, 22 Oct 2026 00:19:39 GMT  
		Size: 5.2 MB (5209850 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0a5529eafe6d4699de1b3f6daa032434ff319636f289d145e2cb40781f829026`  
		Last Modified: Thu, 22 Oct 2026 00:19:39 GMT  
		Size: 9.2 KB (9199 bytes)  
		MIME: application/vnd.in-toto+json
