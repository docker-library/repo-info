## `amazoncorretto:21-al2027-headful`

```console
$ docker pull amazoncorretto@sha256:85f521e61802ff62211eb27dde611acd1e6dd6aa079f2b11eb7cce8b465c35bd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:21-al2027-headful` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:d74a31ca38e24d5d748bb2d5fbd1a4039419292fba0d26fb5d2560a85c3b857c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.3 MB (136283752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eed8c299e547d6c4036928c602a20bea204349e94c7956276ace568f3f09a858`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 18 Nov 2026 21:17:10 GMT
COPY /rootfs/ / # buildkit
# Wed, 18 Nov 2026 21:17:10 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 21:34:31 GMT
ARG version=21.0.13.1.2-1
# Wed, 18 Nov 2026 21:34:31 GMT
ARG resource_version=21.0.13.1.2
# Wed, 18 Nov 2026 21:34:31 GMT
ARG package_version=1
# Wed, 18 Nov 2026 21:34:31 GMT
# ARGS: version=21.0.13.1.2-1 resource_version=21.0.13.1.2 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2027     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETTO_TEMP=$(mktemp -d)     && pushd ${CORRETTO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2027.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2027.${package_version}.${ARCH}.rpm")     && for rpm in "${RPM_LIST[@]}"; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETTO_TEMP}/${rpm}" | grep -F "${CORRETTO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETTO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETTO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 18 Nov 2026 21:34:31 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 21:34:31 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
```

-	Layers:
	-	`sha256:713da152d33274d711b748fa0018ee981140ec1ddea39655f9e477d1be7eccc6`  
		Last Modified: Wed, 18 Nov 2026 21:17:21 GMT  
		Size: 45.6 MB (45646491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5af39e5a548bf02d3b614d2b8a86bdaecaa70c15a12933012be5172b92af22e0`  
		Last Modified: Wed, 18 Nov 2026 21:34:47 GMT  
		Size: 90.6 MB (90637261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-al2027-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:a7b19ef9e93ea0297ba5f2f16a96620bafcc64716ad2a9c032cdfcd3145b0451
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3162696 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6b512398f372558ca625c54a1821cfdfcc329d73a522b98ab04a8dcb22f92b5`

```dockerfile
```

-	Layers:
	-	`sha256:41560c808620b713163def5406f62c922eb482c48e10edd895b385a32f99d84a`  
		Last Modified: Wed, 18 Nov 2026 21:34:45 GMT  
		Size: 3.2 MB (3153569 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6664696044656e095aa72ed0b4106ec24f9570ab00fda1a8c1841aed65d87b0d`  
		Last Modified: Wed, 18 Nov 2026 21:34:45 GMT  
		Size: 9.1 KB (9127 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:21-al2027-headful` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:fabd5830df8a5f38573f21b66620b69c3cdc3dde423a01891722cdf22778ee23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.8 MB (131810140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:edd2b0f21728b0763303d63f54fd7dc237b07201916af904dcc7b01ad0544d96`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 18 Nov 2026 21:17:14 GMT
COPY /rootfs/ / # buildkit
# Wed, 18 Nov 2026 21:17:14 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 21:35:16 GMT
ARG version=21.0.13.1.2-1
# Wed, 18 Nov 2026 21:35:16 GMT
ARG resource_version=21.0.13.1.2
# Wed, 18 Nov 2026 21:35:16 GMT
ARG package_version=1
# Wed, 18 Nov 2026 21:35:16 GMT
# ARGS: version=21.0.13.1.2-1 resource_version=21.0.13.1.2 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2027     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETTO_TEMP=$(mktemp -d)     && pushd ${CORRETTO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2027.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2027.${package_version}.${ARCH}.rpm")     && for rpm in "${RPM_LIST[@]}"; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETTO_TEMP}/${rpm}" | grep -F "${CORRETTO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETTO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETTO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 18 Nov 2026 21:35:16 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 21:35:16 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
```

-	Layers:
	-	`sha256:36b7d5c4fd450b30e5fc5b502fb784c91c3e88bce438c8709993b6db627bd46a`  
		Last Modified: Wed, 18 Nov 2026 21:17:26 GMT  
		Size: 42.6 MB (42641684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8f5fefda58f102347e1370f38cdb513e757e790149309819651e9dfc04a462c`  
		Last Modified: Wed, 18 Nov 2026 21:35:33 GMT  
		Size: 89.2 MB (89168456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-al2027-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:27e7349632d4f6e493c8417ae951a42e7ae9bc7b0016422ad114bc4c2767fe29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3162105 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5655d7962c8b7bf8a8f19d807975502232c7e867f9c590e6c857f1dba0265b29`

```dockerfile
```

-	Layers:
	-	`sha256:297cc284414d0896cd6fd9780bd361e7261d733048ba2f3569054c769978010b`  
		Last Modified: Wed, 18 Nov 2026 21:35:31 GMT  
		Size: 3.2 MB (3152898 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:95e6df3ac3903586059ca099721e1ceb4079c16a5ebf29a30ac092c14418429a`  
		Last Modified: Wed, 18 Nov 2026 21:35:31 GMT  
		Size: 9.2 KB (9207 bytes)  
		MIME: application/vnd.in-toto+json
