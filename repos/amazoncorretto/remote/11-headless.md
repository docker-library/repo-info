## `amazoncorretto:11-headless`

```console
$ docker pull amazoncorretto@sha256:e8a4e8e81673254996fbbee812d116c7a55fe5f3356bcc2e4bc3001b71113619
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:11-headless` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:36819db9eb099d745e646985ad2cef45611d18e46b4364f4c619a633712c37bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.7 MB (130650894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9f09c1f4ad1b06c1c4afca4c7a17885627b0320bf1ba6389b67756bdc4a3a37`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 17 Sep 2026 21:13:04 GMT
COPY /rootfs/ / # buildkit
# Thu, 17 Sep 2026 21:13:04 GMT
CMD ["/bin/bash"]
# Thu, 17 Sep 2026 22:21:50 GMT
ARG version=11.0.32.10-1
# Thu, 17 Sep 2026 22:21:50 GMT
# ARGS: version=11.0.32.10-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 17 Sep 2026 22:21:50 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 22:21:50 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:0f0cc63a5845e28f771c9fceda4decc68b806470b009dae4085b441df0329b69`  
		Last Modified: Mon, 31 Aug 2026 23:14:18 GMT  
		Size: 54.6 MB (54586282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e270f2645d1f06763a0544dc850f315e69570f3e53017d004c2038916fc2ce9f`  
		Last Modified: Thu, 17 Sep 2026 22:22:07 GMT  
		Size: 76.1 MB (76064612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:3ce253949edd2b5b013cdcd42482d8ad03d440bb9e4302932fc1766fc0a79529
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5219326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:037b623d600b493cd6ffca1852e666bf2d7653170884f70531d2510d95de7462`

```dockerfile
```

-	Layers:
	-	`sha256:d26b84554aa986a7f75a7380a80cbfbdd4d6c5e508bc12dcd4210464cb7c6ea0`  
		Last Modified: Thu, 17 Sep 2026 22:22:05 GMT  
		Size: 5.2 MB (5210219 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7e71f7ef7a22e6c1eca9b2e835e58c1456d1d75691f5633e753c5302e3542d65`  
		Last Modified: Thu, 17 Sep 2026 22:22:04 GMT  
		Size: 9.1 KB (9107 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:11-headless` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:9cbaa8e855670a2630ca4eeda3672c392cc651c3182dcfcbf5bc0d2fbb201375
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.8 MB (128758459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c49110a39e562edb7898a0653af0204d26ba93c3c3d54353c9795ebc86d7a8f2`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 17 Sep 2026 21:12:44 GMT
COPY /rootfs/ / # buildkit
# Thu, 17 Sep 2026 21:12:44 GMT
CMD ["/bin/bash"]
# Thu, 17 Sep 2026 22:46:00 GMT
ARG version=11.0.32.10-1
# Thu, 17 Sep 2026 22:46:00 GMT
# ARGS: version=11.0.32.10-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 17 Sep 2026 22:46:00 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 22:46:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:6b98cf5afd5c5e1a58de351abf0b1ec3a4a61b63fd5a86c62edc6367d59ac249`  
		Last Modified: Mon, 31 Aug 2026 23:14:33 GMT  
		Size: 53.5 MB (53452573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2a34552b556d623f1d2078b4e8bece237d43fc073ddc4c33beca31d46e3b059`  
		Last Modified: Thu, 17 Sep 2026 22:46:17 GMT  
		Size: 75.3 MB (75305886 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:ee8203f43567a5b40556fd8153874cf14349b38c2d2e1b3be6684804517e072f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5219048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:638766993d9beef8d212f64db1ec3336ddfdeee881009097cba271e87f57a88e`

```dockerfile
```

-	Layers:
	-	`sha256:b0f42e147282eb200b6ef8acc72fb59d3816e213461ff8e7da8d78a175d58764`  
		Last Modified: Thu, 17 Sep 2026 22:46:15 GMT  
		Size: 5.2 MB (5209849 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:666186ab0332ce610b6a4f76cec938bac196b437bbf74afd680adb628f7e0f68`  
		Last Modified: Thu, 17 Sep 2026 22:46:15 GMT  
		Size: 9.2 KB (9199 bytes)  
		MIME: application/vnd.in-toto+json
