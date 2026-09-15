## `amazoncorretto:26-headless`

```console
$ docker pull amazoncorretto@sha256:98e16aa2228944f2e3a3f1c1fbd33f1313ab6f08ee06b811543474c27916955c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:26-headless` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:34cc2dd35909abc86aa368549f7f0db9cbcbeb885b3aa7eb79b1cf1b2df47a24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.5 MB (160504207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:057e8a77f8b60629a543ce3e871c989737e0356a6150f5fc7b333b70566042d0`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 14 Sep 2026 23:46:16 GMT
COPY /rootfs/ / # buildkit
# Mon, 14 Sep 2026 23:46:16 GMT
CMD ["/bin/bash"]
# Tue, 15 Sep 2026 00:12:52 GMT
ARG version=26.0.2.11-1
# Tue, 15 Sep 2026 00:12:52 GMT
ARG package_version=1
# Tue, 15 Sep 2026 00:12:52 GMT
# ARGS: version=26.0.2.11-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-26-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-26-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 15 Sep 2026 00:12:52 GMT
ENV LANG=C.UTF-8
# Tue, 15 Sep 2026 00:12:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-26-amazon-corretto
```

-	Layers:
	-	`sha256:0f0cc63a5845e28f771c9fceda4decc68b806470b009dae4085b441df0329b69`  
		Last Modified: Mon, 31 Aug 2026 23:14:18 GMT  
		Size: 54.6 MB (54586282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65407e1a69f80c85da7254db3ab2a8abf0e1d9d46383be2ea9b13d482f6c0931`  
		Last Modified: Tue, 15 Sep 2026 00:13:11 GMT  
		Size: 105.9 MB (105917925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:26-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:9605010320cf61398ee8224db0e24db4b7b35ad68a948fd86a0583436d2f53b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5216236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59de5a83a0de0a703650d08532bd1172115ae910d9c7a7616e197311d3e170d4`

```dockerfile
```

-	Layers:
	-	`sha256:caf23378368506da893f1d265f97a0bbcaaceb7919f0a55839fd0e42bc59857a`  
		Last Modified: Tue, 15 Sep 2026 00:13:08 GMT  
		Size: 5.2 MB (5207036 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:163d4878f3bf4928698a383787b8c1d8a8a261fef4a75200b645e1b920647137`  
		Last Modified: Tue, 15 Sep 2026 00:13:08 GMT  
		Size: 9.2 KB (9200 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:26-headless` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:93b1511f04435f8124f008d0c1528a94c95537ef25b52c21240a0a6da4697fe1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.3 MB (158250156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b957022e555afc97c965da7a30614426d2afda79cea145d732956b23dcd287de`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 14 Sep 2026 23:45:56 GMT
COPY /rootfs/ / # buildkit
# Mon, 14 Sep 2026 23:45:56 GMT
CMD ["/bin/bash"]
# Tue, 15 Sep 2026 00:12:38 GMT
ARG version=26.0.2.11-1
# Tue, 15 Sep 2026 00:12:38 GMT
ARG package_version=1
# Tue, 15 Sep 2026 00:12:38 GMT
# ARGS: version=26.0.2.11-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-26-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-26-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 15 Sep 2026 00:12:38 GMT
ENV LANG=C.UTF-8
# Tue, 15 Sep 2026 00:12:38 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-26-amazon-corretto
```

-	Layers:
	-	`sha256:6b98cf5afd5c5e1a58de351abf0b1ec3a4a61b63fd5a86c62edc6367d59ac249`  
		Last Modified: Mon, 31 Aug 2026 23:14:33 GMT  
		Size: 53.5 MB (53452573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2bc1c4c4737ab5c40d6b56381074b7e2396e424c1f470a830f4d5869f33bbf9`  
		Last Modified: Tue, 15 Sep 2026 00:12:58 GMT  
		Size: 104.8 MB (104797583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:26-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:fd3cd202e89688c8a6d5bc1aaffaa9a4a4572813d0249e96c0489b0cf21af4ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5215138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c9b3cdafeb1f52a447d5da6c797e7c5957af93000034d594c13da2ab56ee840`

```dockerfile
```

-	Layers:
	-	`sha256:01d0f5cae77f1a5dfa9e99d72c66b82a5c205b6022b4f68b5fa9ad61d0b462e8`  
		Last Modified: Tue, 15 Sep 2026 00:12:56 GMT  
		Size: 5.2 MB (5205846 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:08702d2874fbcccd1e612c1bed93149075b2feeb6c3497ae6a436687a9b55e61`  
		Last Modified: Tue, 15 Sep 2026 00:12:56 GMT  
		Size: 9.3 KB (9292 bytes)  
		MIME: application/vnd.in-toto+json
