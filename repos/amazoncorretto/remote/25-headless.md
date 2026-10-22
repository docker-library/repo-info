## `amazoncorretto:25-headless`

```console
$ docker pull amazoncorretto@sha256:29f70764d3ffc8c8afb1b721891a9041df8117ce3f570a26e67a077d2e13612c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:25-headless` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:e946379c03642cc9c0e66db18c1d75780bc1fbad59dc7f6a0540da01ae64bf74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.4 MB (158392903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcd9e7a74e0c43a2f142d8ebc3e9d9bbc5be5a60d54f28522275dbaf9dfdc114`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 21 Oct 2026 22:45:19 GMT
COPY /rootfs/ / # buildkit
# Wed, 21 Oct 2026 22:45:19 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 23:29:04 GMT
ARG version=25.0.4.11-1
# Wed, 21 Oct 2026 23:29:04 GMT
ARG package_version=1
# Wed, 21 Oct 2026 23:29:04 GMT
# ARGS: version=25.0.4.11-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 21 Oct 2026 23:29:04 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 23:29:04 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
```

-	Layers:
	-	`sha256:7234d0a9b6ba1270c7bb653ee62a443a1dbb6fdfa833336edd3c0691c2524d1f`  
		Last Modified: Thu, 01 Oct 2026 02:22:29 GMT  
		Size: 54.6 MB (54630770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95d17c6ca1464082cbe5a6d34df28be240085dbb0c91a5f382a1e47f1c466eaf`  
		Last Modified: Wed, 21 Oct 2026 23:29:26 GMT  
		Size: 103.8 MB (103762133 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:4b99587dd08d087626b9b82f2990bb6e567bf06e2f5bc6dc1c8f3a3fd27badc9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5217878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bed4601660fe5fea85d2f756bc62c0bdee4b9b9889eab19c4f483ebe94b2503`

```dockerfile
```

-	Layers:
	-	`sha256:6881ed5aa7156778e46e93e4cc72d528906d78c384d27b7fcb3536096000a361`  
		Last Modified: Wed, 21 Oct 2026 23:29:23 GMT  
		Size: 5.2 MB (5208679 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ac8731f8982fa4042f990e5686ccf63fb57a91bf4d7014ded0a5347f775d162d`  
		Last Modified: Wed, 21 Oct 2026 23:29:23 GMT  
		Size: 9.2 KB (9199 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:25-headless` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:01e7edd24c4cdce06399d55982605adcd6d86648e8bd865efd422509b39b2f2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.2 MB (156214347 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1649d7146edb4d060bb75d26656e7ac02c19a3351ab97aa448de2899b1a1d93`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 21 Oct 2026 23:11:39 GMT
COPY /rootfs/ / # buildkit
# Wed, 21 Oct 2026 23:11:39 GMT
CMD ["/bin/bash"]
# Thu, 22 Oct 2026 00:20:40 GMT
ARG version=25.0.4.11-1
# Thu, 22 Oct 2026 00:20:40 GMT
ARG package_version=1
# Thu, 22 Oct 2026 00:20:40 GMT
# ARGS: version=25.0.4.11-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 22 Oct 2026 00:20:40 GMT
ENV LANG=C.UTF-8
# Thu, 22 Oct 2026 00:20:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
```

-	Layers:
	-	`sha256:3009834f3cf8cead1d3dea9d3cbebc711c021c4aed04759be014247a0c3181e7`  
		Last Modified: Thu, 01 Oct 2026 02:22:31 GMT  
		Size: 53.5 MB (53504398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5ff870433a22e721e2c42598f7768a1ee28356284269878481d335daa2afe79`  
		Last Modified: Thu, 22 Oct 2026 00:21:01 GMT  
		Size: 102.7 MB (102709949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:8e7f2538968065ed19fde3e386345226a615f6c23ba820309ba74de7136f7595
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5216783 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44c2a0f8e5e15ad26317ef0a725efaece575a56a0aede754d36a6099a6720c85`

```dockerfile
```

-	Layers:
	-	`sha256:9c67ac7aa2d451d0b769e6e6c0dc79042334c029272733467772299e51c1d1fd`  
		Last Modified: Thu, 22 Oct 2026 00:20:59 GMT  
		Size: 5.2 MB (5207491 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:69afd7981dde976b5ab41f51c0a54e535005f4bdb7dd7f1fd3539dfc4601ade7`  
		Last Modified: Thu, 22 Oct 2026 00:20:58 GMT  
		Size: 9.3 KB (9292 bytes)  
		MIME: application/vnd.in-toto+json
