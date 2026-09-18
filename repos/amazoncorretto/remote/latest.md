## `amazoncorretto:latest`

```console
$ docker pull amazoncorretto@sha256:c15c471ed7235c103d9fc2d35d3c8c8f5e2096d2b69c9f76168cf2fd03da0a8f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:latest` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:89c6ff72cb3cfa0c32a92fd8c0315d09e080d6797273886ea8b6ca1064c1c429
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.7 MB (172675413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95fdb75882b0f365f6f159a8577a0a55d8a170145fa842d985f6c5e37a6e0d06`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 14 Sep 2026 23:46:16 GMT
COPY /rootfs/ / # buildkit
# Mon, 14 Sep 2026 23:46:16 GMT
CMD ["/bin/bash"]
# Tue, 15 Sep 2026 00:10:49 GMT
ARG version=1.8.0_504.b01-1
# Tue, 15 Sep 2026 00:10:49 GMT
# ARGS: version=1.8.0_504.b01-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 15 Sep 2026 00:10:49 GMT
ENV LANG=C.UTF-8
# Tue, 15 Sep 2026 00:10:49 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
```

-	Layers:
	-	`sha256:0f0cc63a5845e28f771c9fceda4decc68b806470b009dae4085b441df0329b69`  
		Last Modified: Mon, 31 Aug 2026 23:14:18 GMT  
		Size: 54.6 MB (54586282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d9646a747d1d334c14607152584ba0697ff113dcac013d513434896a16769d4`  
		Last Modified: Tue, 15 Sep 2026 00:11:09 GMT  
		Size: 118.1 MB (118089131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:latest` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:fab49c845d03aae7896974ff018585b74723532229a9c4f036a8018986f05c49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5717118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a91fca87f9e33d1935163487e5e407792923f4c8ab9cd4ed2a635211d4ba57d5`

```dockerfile
```

-	Layers:
	-	`sha256:9789f73ac41d84b6f6b0813c0cab2ac2ea36efe9006497ad638cc58f844e4251`  
		Last Modified: Tue, 15 Sep 2026 00:11:06 GMT  
		Size: 5.7 MB (5706217 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c294322dc8c63d62b6e52157f89f2a0f8bff88d86ee0027dc4205b556fedfc7e`  
		Last Modified: Tue, 15 Sep 2026 00:11:06 GMT  
		Size: 10.9 KB (10901 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:latest` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:3ef173455088c0286d8124a57d25f8440eb944e7dd9a33de0fae2761a3a72e58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.4 MB (171422883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26a97d85776d3bee15b722341012a7702678adbc908d08ad6855003b51bad5eb`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 17 Sep 2026 21:12:44 GMT
COPY /rootfs/ / # buildkit
# Thu, 17 Sep 2026 21:12:44 GMT
CMD ["/bin/bash"]
# Thu, 17 Sep 2026 22:45:40 GMT
ARG version=1.8.0_504.b01-1
# Thu, 17 Sep 2026 22:45:40 GMT
# ARGS: version=1.8.0_504.b01-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 17 Sep 2026 22:45:40 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 22:45:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
```

-	Layers:
	-	`sha256:6b98cf5afd5c5e1a58de351abf0b1ec3a4a61b63fd5a86c62edc6367d59ac249`  
		Last Modified: Mon, 31 Aug 2026 23:14:33 GMT  
		Size: 53.5 MB (53452573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0e44be5ec76073fa5d9148cdc116fe83f9fd92191a47a8a45a43fd14f78db0d`  
		Last Modified: Thu, 17 Sep 2026 22:46:04 GMT  
		Size: 118.0 MB (117970310 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:latest` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:2d93c52defa72d5bc126f387d0099bb5cf40d56757144748a2f130bc0fa933d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5717560 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82f2358f83839c6bbb42adf1b14d59fd05f59c84cd2f2fc821ecc8fb470b2900`

```dockerfile
```

-	Layers:
	-	`sha256:62dc859b3d7cb1330ce622ee3e101e207522812701177c73fbdc66ca96f1927a`  
		Last Modified: Thu, 17 Sep 2026 22:46:00 GMT  
		Size: 5.7 MB (5706519 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f904a2bcea9d8204059e06873c477e0ee6b27c3c6df625e7b1b6bacb782c2f97`  
		Last Modified: Thu, 17 Sep 2026 22:46:00 GMT  
		Size: 11.0 KB (11041 bytes)  
		MIME: application/vnd.in-toto+json
