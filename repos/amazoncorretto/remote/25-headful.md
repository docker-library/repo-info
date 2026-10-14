## `amazoncorretto:25-headful`

```console
$ docker pull amazoncorretto@sha256:579472028fba21d6c56ee66fdd05c110c077237c47d9fca9e624b1c33c4f2090
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:25-headful` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:a10ef4263c398f2ce3b43f80d6980607731991fe5b95146468cb2683f46cb1da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.1 MB (159132206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aba3d305530ae6c1f7d07956110748fb84cd6b536bcb278c72f63a4f2d71c37e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 05 Oct 2026 18:29:04 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:29:04 GMT
CMD ["/bin/bash"]
# Wed, 14 Oct 2026 17:08:24 GMT
ARG version=25.0.4.11-1
# Wed, 14 Oct 2026 17:08:24 GMT
ARG package_version=1
# Wed, 14 Oct 2026 17:08:24 GMT
# ARGS: version=25.0.4.11-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 14 Oct 2026 17:08:24 GMT
ENV LANG=C.UTF-8
# Wed, 14 Oct 2026 17:08:24 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
```

-	Layers:
	-	`sha256:7234d0a9b6ba1270c7bb653ee62a443a1dbb6fdfa833336edd3c0691c2524d1f`  
		Last Modified: Thu, 01 Oct 2026 02:22:29 GMT  
		Size: 54.6 MB (54630770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80f98c9c73eecaa77770a96e18b22305ec8dc6fe69f345276d7c924d5686e88c`  
		Last Modified: Wed, 14 Oct 2026 17:08:45 GMT  
		Size: 104.5 MB (104501436 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:157bfe8792837c215316bb44563f6f4b6fdac6e2df09a5b0e76d8aa03e3054ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5243475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73ac6f336850521c24b315401577a5da1f3837c8612f93ce8c392b8b019ac98e`

```dockerfile
```

-	Layers:
	-	`sha256:85615ef93ca4a8b820f976098dd1be901654bede3b696408a31222c28540ef5e`  
		Last Modified: Wed, 14 Oct 2026 17:08:42 GMT  
		Size: 5.2 MB (5234106 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:747b0c3c8ec8c593f6ad9c3181979689ffb1771c36dd5fc57c174197e0fba7b5`  
		Last Modified: Wed, 14 Oct 2026 17:08:42 GMT  
		Size: 9.4 KB (9369 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:25-headful` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:850571452618a5e67173ca58bf1f75e58363609ea51f4caac62da36bd67493f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.9 MB (156938914 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:892f0cb0388353178242499d03eaa1cfe5493946d4cf15f94de1030fc10c441b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 05 Oct 2026 18:28:31 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:28:31 GMT
CMD ["/bin/bash"]
# Wed, 14 Oct 2026 17:08:27 GMT
ARG version=25.0.4.11-1
# Wed, 14 Oct 2026 17:08:27 GMT
ARG package_version=1
# Wed, 14 Oct 2026 17:08:27 GMT
# ARGS: version=25.0.4.11-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 14 Oct 2026 17:08:27 GMT
ENV LANG=C.UTF-8
# Wed, 14 Oct 2026 17:08:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
```

-	Layers:
	-	`sha256:3009834f3cf8cead1d3dea9d3cbebc711c021c4aed04759be014247a0c3181e7`  
		Last Modified: Thu, 01 Oct 2026 02:22:31 GMT  
		Size: 53.5 MB (53504398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2dc74b4ae8dba295e5f1c2f101b75f5138fea7f54f4de32e239f6966004058f`  
		Last Modified: Wed, 14 Oct 2026 17:08:48 GMT  
		Size: 103.4 MB (103434516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:0c57f132c3a29f2b0cd71c1f67a5ed4f6752a8b6f49b4b6a449c4f95b0d68332
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5242382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93c76a69b1d2a7397610a7a4fb770663e36d5d77c815d1853623d0c8fbe10b6b`

```dockerfile
```

-	Layers:
	-	`sha256:47c4ac1b26657cd8bf854ad98ffb61d97bb27aecf669b003b1e4fee1c6939b7b`  
		Last Modified: Wed, 14 Oct 2026 17:08:45 GMT  
		Size: 5.2 MB (5232921 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:35fdaa3260ae8b9c326692ecf74c9093a35d745c8e2b13a329ad9fa6922b9676`  
		Last Modified: Wed, 14 Oct 2026 17:08:45 GMT  
		Size: 9.5 KB (9461 bytes)  
		MIME: application/vnd.in-toto+json
