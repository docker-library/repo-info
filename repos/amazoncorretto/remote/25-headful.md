## `amazoncorretto:25-headful`

```console
$ docker pull amazoncorretto@sha256:14f26b5a013cfbf8c90ab32c48ea4b67e78371b25e53a991b8069a8ecf081449
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:25-headful` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:d0495cb4ae8b463ed976cea13576bc18133f69eba34475019c5fc71fa1f3ef46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.1 MB (159065988 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:804c9b867f33cab68b2469d20ac3809869956273ab1a9fddc3441a35651c8adf`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 17 Sep 2026 21:13:04 GMT
COPY /rootfs/ / # buildkit
# Thu, 17 Sep 2026 21:13:04 GMT
CMD ["/bin/bash"]
# Thu, 17 Sep 2026 22:23:04 GMT
ARG version=25.0.4.8-1
# Thu, 17 Sep 2026 22:23:04 GMT
ARG package_version=1
# Thu, 17 Sep 2026 22:23:04 GMT
# ARGS: version=25.0.4.8-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 17 Sep 2026 22:23:04 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 22:23:04 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
```

-	Layers:
	-	`sha256:0f0cc63a5845e28f771c9fceda4decc68b806470b009dae4085b441df0329b69`  
		Last Modified: Mon, 31 Aug 2026 23:14:18 GMT  
		Size: 54.6 MB (54586282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec36b6c2a6c207a3b3dd2a5567df84ed2f6b37daf9af8436c7023d24865b6ec0`  
		Last Modified: Thu, 17 Sep 2026 22:23:24 GMT  
		Size: 104.5 MB (104479706 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:af2ee971486f1c792c7584f2c192282ff798dabfbda3f24257b7edc9f5cf0e17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5243467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6211ac87d2f7782d1895adbcd4344aad204e0891436919d12988aa68de1380a`

```dockerfile
```

-	Layers:
	-	`sha256:d2cd197c1bcf85a1cf48ef5a528a03114968ed3310277f0319f1bf81737f8bd7`  
		Last Modified: Thu, 17 Sep 2026 22:23:22 GMT  
		Size: 5.2 MB (5234099 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7681a8b409ea35725461ae8f1e83d17f1a798bd7a27d15a0fcdd7b79ef016e88`  
		Last Modified: Thu, 17 Sep 2026 22:23:21 GMT  
		Size: 9.4 KB (9368 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:25-headful` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:737030fe39e0a375569ed6e96a88c1a9785de0cd6f2ed0ae045a75ac77dfc23f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.8 MB (156839798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a0316c48f224de78fd6d7971515e1fb06528ca6c659185c9dfb58f440e82e1c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 17 Sep 2026 21:12:44 GMT
COPY /rootfs/ / # buildkit
# Thu, 17 Sep 2026 21:12:44 GMT
CMD ["/bin/bash"]
# Thu, 17 Sep 2026 22:47:26 GMT
ARG version=25.0.4.8-1
# Thu, 17 Sep 2026 22:47:26 GMT
ARG package_version=1
# Thu, 17 Sep 2026 22:47:26 GMT
# ARGS: version=25.0.4.8-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 17 Sep 2026 22:47:26 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 22:47:26 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
```

-	Layers:
	-	`sha256:6b98cf5afd5c5e1a58de351abf0b1ec3a4a61b63fd5a86c62edc6367d59ac249`  
		Last Modified: Mon, 31 Aug 2026 23:14:33 GMT  
		Size: 53.5 MB (53452573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c15e8ca6f27247e190f07c0330bba02c11d79e734d05d7550e8803dc2d171376`  
		Last Modified: Thu, 17 Sep 2026 22:47:47 GMT  
		Size: 103.4 MB (103387225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:7f035567dfda51d257253839053a26452f1ce7eed4c6d99d5c43b35d2ed1bb8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5242374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c30e08ad59fdf369d786d7cd311fa55c8604f7a2af99a83187a5ce04d6d4bc4`

```dockerfile
```

-	Layers:
	-	`sha256:ffcee5caed4760c5bd377c725c7cbabbfb1a2351554e08077ac370834aa3266e`  
		Last Modified: Thu, 17 Sep 2026 22:47:44 GMT  
		Size: 5.2 MB (5232914 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cc90dffdfb41ac32d5a925989845e60c200a6b89414397acda29c99cde2aca36`  
		Last Modified: Thu, 17 Sep 2026 22:47:44 GMT  
		Size: 9.5 KB (9460 bytes)  
		MIME: application/vnd.in-toto+json
