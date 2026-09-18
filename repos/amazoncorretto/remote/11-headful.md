## `amazoncorretto:11-headful`

```console
$ docker pull amazoncorretto@sha256:84f7820fb50c7c452f364375096520c4633332b8b70f50f8ac84fb891e49965a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:11-headful` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:eca5bf78072738d56b54f9f8151a05b12f4b1ecf8ae213915ae903441bad14b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.3 MB (131347168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d5c43686ab0a63555b146a107a75b1e65744cf3b903e403735244f0f9d18bc5`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 14 Sep 2026 23:46:16 GMT
COPY /rootfs/ / # buildkit
# Mon, 14 Sep 2026 23:46:16 GMT
CMD ["/bin/bash"]
# Tue, 15 Sep 2026 00:10:58 GMT
ARG version=11.0.32.10-1
# Tue, 15 Sep 2026 00:10:58 GMT
# ARGS: version=11.0.32.10-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 15 Sep 2026 00:10:58 GMT
ENV LANG=C.UTF-8
# Tue, 15 Sep 2026 00:10:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:0f0cc63a5845e28f771c9fceda4decc68b806470b009dae4085b441df0329b69`  
		Last Modified: Mon, 31 Aug 2026 23:14:18 GMT  
		Size: 54.6 MB (54586282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6e4db1dcb98cc6b981ef0c3bd4dc36ca82ea37fb61866c1941f0fb685ab31bd`  
		Last Modified: Tue, 15 Sep 2026 00:11:15 GMT  
		Size: 76.8 MB (76760886 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:7985590f0e03868a68974e546d97596cafcd0753778489823857e7453ca61e49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5244872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac6b4fd8e452922dc7c6f07e28cbff47c00686d2b594e386e9b9e8ad593cc8d8`

```dockerfile
```

-	Layers:
	-	`sha256:1aa9b3d00f0a2ab7b10ed1d09e0f3d59d468d1df3d095e8f37f53640c8695b16`  
		Last Modified: Tue, 15 Sep 2026 00:11:13 GMT  
		Size: 5.2 MB (5235644 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:172bbad2280625b7fce445bc6f1c941dc73236bc1c7cd790da594af0ebb699ab`  
		Last Modified: Tue, 15 Sep 2026 00:11:12 GMT  
		Size: 9.2 KB (9228 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:11-headful` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:6017a599bc07cdca1c17ec2800b58e52e405da09c1c7243da6c3681cd10b9d70
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.5 MB (129463545 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:033614824ae0eeee5756d88b71b35ee65ed1ade9c78b0fd247b61209d428182a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 17 Sep 2026 21:12:44 GMT
COPY /rootfs/ / # buildkit
# Thu, 17 Sep 2026 21:12:44 GMT
CMD ["/bin/bash"]
# Thu, 17 Sep 2026 22:46:02 GMT
ARG version=11.0.32.10-1
# Thu, 17 Sep 2026 22:46:02 GMT
# ARGS: version=11.0.32.10-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 17 Sep 2026 22:46:02 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 22:46:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:6b98cf5afd5c5e1a58de351abf0b1ec3a4a61b63fd5a86c62edc6367d59ac249`  
		Last Modified: Mon, 31 Aug 2026 23:14:33 GMT  
		Size: 53.5 MB (53452573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00304b80b66e3d4a73793fee67691f38fe22b673eddb958ac2f1050f9dc7e07c`  
		Last Modified: Thu, 17 Sep 2026 22:46:19 GMT  
		Size: 76.0 MB (76010972 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:d350a09a8fa7d20ceb56afb70f22a289b588b4b2af494cd90e0fef7db1828d07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5244598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3b5b1e6853d70a7ae616a80e69eebb841491b12f4a0aa2588c72a54afc32b1e`

```dockerfile
```

-	Layers:
	-	`sha256:64ea5c1e9d2bd1e38dc7ba004811fe16c81cd5691e9150e14cc3aad20364481a`  
		Last Modified: Thu, 17 Sep 2026 22:46:17 GMT  
		Size: 5.2 MB (5235277 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d0811a58fb8049345fc6543e34f105ae9f7ee78260a5787348983206cba8749c`  
		Last Modified: Thu, 17 Sep 2026 22:46:17 GMT  
		Size: 9.3 KB (9321 bytes)  
		MIME: application/vnd.in-toto+json
