## `amazoncorretto:11-al2023-headless`

```console
$ docker pull amazoncorretto@sha256:f47670d0ea144cbeb509226c802136538971bde73dc7b1988a999cc160313f50
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:11-al2023-headless` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:de62a0ab1009d4db77a6d6d563c47ea31b835b13584110761735927f3a0e5639
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.7 MB (130717887 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1791aa32095a940367f74a7d9a5b172146ec3731f8b389cf7157d245047fe1d7`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 05 Oct 2026 18:29:04 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:29:04 GMT
CMD ["/bin/bash"]
# Wed, 14 Oct 2026 17:07:19 GMT
ARG version=11.0.32.13-1
# Wed, 14 Oct 2026 17:07:19 GMT
# ARGS: version=11.0.32.13-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 14 Oct 2026 17:07:19 GMT
ENV LANG=C.UTF-8
# Wed, 14 Oct 2026 17:07:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:7234d0a9b6ba1270c7bb653ee62a443a1dbb6fdfa833336edd3c0691c2524d1f`  
		Last Modified: Thu, 01 Oct 2026 02:22:29 GMT  
		Size: 54.6 MB (54630770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62f42a82dbb7a78ad93b4d3fc4b5e713a4f3008068918c05e143df5555254413`  
		Last Modified: Wed, 14 Oct 2026 17:07:35 GMT  
		Size: 76.1 MB (76087117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-al2023-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:c278620614ef261ef4ebac4250ca9cc1529e261e1d9ecf4e1bcf7198c6485a7f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5219326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ab3abb59d4321d80ed5b5c87385ce292b7ec9ac91d2942e3bd9fa798e66a87e`

```dockerfile
```

-	Layers:
	-	`sha256:61d6dbeccc7d46432c573e222c23e02f8c85884286ebf85655f38ff9ceefd3cc`  
		Last Modified: Wed, 14 Oct 2026 17:07:33 GMT  
		Size: 5.2 MB (5210220 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:43d28636ccc3fa80efb15d51a5af3a925e78c5927f9b539173bf2b04ffe7a6d3`  
		Last Modified: Wed, 14 Oct 2026 17:07:32 GMT  
		Size: 9.1 KB (9106 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:11-al2023-headless` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:bbdbeb061f657de12934421faebdcbef7ce5d6f063fe5239ff789b48c3a69656
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.8 MB (128839466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:157851d71e698c28489395bcf15e3be692b7733e46a3e5a15870908c12971970`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 05 Oct 2026 18:28:31 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:28:31 GMT
CMD ["/bin/bash"]
# Wed, 14 Oct 2026 17:07:22 GMT
ARG version=11.0.32.13-1
# Wed, 14 Oct 2026 17:07:22 GMT
# ARGS: version=11.0.32.13-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 14 Oct 2026 17:07:22 GMT
ENV LANG=C.UTF-8
# Wed, 14 Oct 2026 17:07:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:3009834f3cf8cead1d3dea9d3cbebc711c021c4aed04759be014247a0c3181e7`  
		Last Modified: Thu, 01 Oct 2026 02:22:31 GMT  
		Size: 53.5 MB (53504398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8069e88d60836224b4a4befafa16cd0d2c8708e27f3a41de639d6c370ba4f98e`  
		Last Modified: Wed, 14 Oct 2026 17:07:40 GMT  
		Size: 75.3 MB (75335068 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-al2023-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:84c60b7133e3f0d37372aac5118e1bcfd7bf71347ec815e99b77e45a27997d23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5219048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b17ec75a942963ecb8d0fe67fb34e0dde0f1824ef16d7ad246a4654a23dc1d7c`

```dockerfile
```

-	Layers:
	-	`sha256:1ab32bb3d1e1927163131342c3db5df60977cc543eeb3e4730c1b442e1efd600`  
		Last Modified: Wed, 14 Oct 2026 17:07:38 GMT  
		Size: 5.2 MB (5209850 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b1ea2b25432cb5fbeded2fcde4534dfb00b47f34a03747436c59911eb115d154`  
		Last Modified: Wed, 14 Oct 2026 17:07:38 GMT  
		Size: 9.2 KB (9198 bytes)  
		MIME: application/vnd.in-toto+json
