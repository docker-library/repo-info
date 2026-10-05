## `amazoncorretto:11-al2023-headless`

```console
$ docker pull amazoncorretto@sha256:a18e05487c3cd80baf7d8cced87d8adc3ebeba751da28d32d2352d22f60f8bd2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:11-al2023-headless` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:96925c2637cfbdf8dc14c5d084e28f50ff2e13c4cbb17c3067dc0df23616acf7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.7 MB (130718222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95ec0af796d885a807057d40a4de90112f03e8a263ddff9f00c12b628104eae2`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 05 Oct 2026 18:29:04 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:29:04 GMT
CMD ["/bin/bash"]
# Mon, 05 Oct 2026 18:43:13 GMT
ARG version=11.0.32.12-1
# Mon, 05 Oct 2026 18:43:13 GMT
# ARGS: version=11.0.32.12-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 05 Oct 2026 18:43:13 GMT
ENV LANG=C.UTF-8
# Mon, 05 Oct 2026 18:43:13 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:7234d0a9b6ba1270c7bb653ee62a443a1dbb6fdfa833336edd3c0691c2524d1f`  
		Last Modified: Thu, 01 Oct 2026 02:22:29 GMT  
		Size: 54.6 MB (54630770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e571d921e834c921ee4a9241f69a025b4846975d817d3ec090d57c7dc8f4606f`  
		Last Modified: Mon, 05 Oct 2026 18:43:30 GMT  
		Size: 76.1 MB (76087452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-al2023-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:000ae0701b9b9342aa1fe48e3ab80f3dbe98438bf805ed7e6903f868ef1040de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5219327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfe366cfa9589cb0814de1254e85b7f21160328bec2f537a33d8ac6ef6005806`

```dockerfile
```

-	Layers:
	-	`sha256:ed83b15ffbd1743e849e9640cc38f3a431dce194b6ef316c8d13f00f9fec2584`  
		Last Modified: Mon, 05 Oct 2026 18:43:28 GMT  
		Size: 5.2 MB (5210220 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0ab0fdadfe3d5884e8af40f6cde6849d7c9de67bf23ca72ac180afdaef7b1f15`  
		Last Modified: Mon, 05 Oct 2026 18:43:28 GMT  
		Size: 9.1 KB (9107 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:11-al2023-headless` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:c9f49898a00ad131cd170cfc2d13fc5cb44b8cca029355c6afaa4d1f1dbaf344
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.8 MB (128838999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fbbbd0997a2978d60c9ce5bd470b97d65ceabf80b2cfb742db3727ff623347b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 05 Oct 2026 18:28:31 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:28:31 GMT
CMD ["/bin/bash"]
# Mon, 05 Oct 2026 18:42:22 GMT
ARG version=11.0.32.12-1
# Mon, 05 Oct 2026 18:42:22 GMT
# ARGS: version=11.0.32.12-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 05 Oct 2026 18:42:22 GMT
ENV LANG=C.UTF-8
# Mon, 05 Oct 2026 18:42:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:3009834f3cf8cead1d3dea9d3cbebc711c021c4aed04759be014247a0c3181e7`  
		Last Modified: Thu, 01 Oct 2026 02:22:31 GMT  
		Size: 53.5 MB (53504398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b44965be0f3e3662142948057d1ee2a0634261c48257afd7efe3dea79d66be2`  
		Last Modified: Mon, 05 Oct 2026 18:42:40 GMT  
		Size: 75.3 MB (75334601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-al2023-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:475a28c1932d63561bb727f2a670e141ed1948703f503b583949cf7e57aad82e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5219049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a28c00cefeaed2781fbe190e261996be85bdbd7dde994146d73c10e3281fbfc`

```dockerfile
```

-	Layers:
	-	`sha256:c0183787973d4451dff05734380d1194aabef8dd3359713d9f61cdb9bdee3c31`  
		Last Modified: Mon, 05 Oct 2026 18:42:38 GMT  
		Size: 5.2 MB (5209850 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9070a0a7803b830bcefdd9eabfe8a4acef50c1fc7bb083cb4f59eb3f4e62d31c`  
		Last Modified: Mon, 05 Oct 2026 18:42:38 GMT  
		Size: 9.2 KB (9199 bytes)  
		MIME: application/vnd.in-toto+json
