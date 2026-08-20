## `amazoncorretto:21-headless`

```console
$ docker pull amazoncorretto@sha256:2af7a2186e396ee1fa0a84802261c573c50e28566b24ee4302bdbee90644d9b5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:21-headless` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:5cf1cc34a03ac4ae6e41cb84d9fda24bd6200f6e051e984c1131a409f1e2c05c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.9 MB (143923706 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8bfd1dc280644d27115efd4b80a20fe2cbe43fc7d0df8ce802a35ca35868c6a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 20 Aug 2026 16:55:33 GMT
COPY /rootfs/ / # buildkit
# Thu, 20 Aug 2026 16:55:33 GMT
CMD ["/bin/bash"]
# Thu, 20 Aug 2026 17:20:55 GMT
ARG version=21.0.12.9-1
# Thu, 20 Aug 2026 17:20:55 GMT
ARG package_version=1
# Thu, 20 Aug 2026 17:20:55 GMT
# ARGS: version=21.0.12.9-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 20 Aug 2026 17:20:55 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:20:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
```

-	Layers:
	-	`sha256:f206cad061713321049e1fe0c85223e018266fd8bccebf3156ef94c125bbd2e0`  
		Last Modified: Mon, 17 Aug 2026 23:42:26 GMT  
		Size: 54.6 MB (54583847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed8cee134f5a4ad212a41fa56ce57f6ac295e6208c05e47af4da79148ee3b77b`  
		Last Modified: Thu, 20 Aug 2026 17:21:13 GMT  
		Size: 89.3 MB (89339859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:cf0ef80b8736c927b4c77f57f0ca51d40323379dd2eff5112d1d79bdbe11b8f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5207934 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d033dc8e4ba061493269be83d01b17bdaa7acc50894b982845329c6c7b59a71`

```dockerfile
```

-	Layers:
	-	`sha256:ae9cf1b7c3d3859d5f1737fe3c3022e24ed4fcbf9715983f4dc1116c32fb9f49`  
		Last Modified: Thu, 20 Aug 2026 17:21:11 GMT  
		Size: 5.2 MB (5198733 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:124b4978c17837c187f14a26f002f4108916a4399d1943e8369359917528540b`  
		Last Modified: Thu, 20 Aug 2026 17:21:10 GMT  
		Size: 9.2 KB (9201 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:21-headless` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:970822f3d57e43cf8b5040a67dc56b3d5e5d83f7bdabcd74299b945e1dc99269
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.9 MB (141926928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05caad98a3d4a8a2b80ff76581bc1e47bc0595796addab175b14943292555d7a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 20 Aug 2026 16:55:33 GMT
COPY /rootfs/ / # buildkit
# Thu, 20 Aug 2026 16:55:33 GMT
CMD ["/bin/bash"]
# Thu, 20 Aug 2026 17:17:53 GMT
ARG version=21.0.12.9-1
# Thu, 20 Aug 2026 17:17:53 GMT
ARG package_version=1
# Thu, 20 Aug 2026 17:17:53 GMT
# ARGS: version=21.0.12.9-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 20 Aug 2026 17:17:53 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:17:53 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
```

-	Layers:
	-	`sha256:108a276670f119053938f97626b5d9916306b34861b9c0cdd8d64a50bf504ad8`  
		Last Modified: Mon, 17 Aug 2026 23:42:41 GMT  
		Size: 53.5 MB (53450887 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c84504d5b184ba48b46334ffd060720bf1ec226fe0897fd0b0c36bcb3c48f60c`  
		Last Modified: Thu, 20 Aug 2026 17:18:12 GMT  
		Size: 88.5 MB (88476041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:a0eab8b2944768c3dd60c186b510d43bf92efaa978c4e0ddea390daad63669a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5206829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b2ddbe794329a3d04eb84d249fc603026fbd048e20c48716f7ed986b5d50888`

```dockerfile
```

-	Layers:
	-	`sha256:5405a4c6afaa0f70e4641b9a342ff4da0fc565bc53357dc408a52257bad24d27`  
		Last Modified: Thu, 20 Aug 2026 17:18:10 GMT  
		Size: 5.2 MB (5197536 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:311384494fb8c1031d10a9923fa941aaea1b36862a91659d6d7d8ba8aae6db1c`  
		Last Modified: Thu, 20 Aug 2026 17:18:09 GMT  
		Size: 9.3 KB (9293 bytes)  
		MIME: application/vnd.in-toto+json
