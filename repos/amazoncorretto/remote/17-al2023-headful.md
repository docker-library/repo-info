## `amazoncorretto:17-al2023-headful`

```console
$ docker pull amazoncorretto@sha256:d27ba2c3327e116283e2b2956b0e18ad1f3aa65d4e438ba034fff179800e4cb2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-al2023-headful` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:4deb06d858ce97f3007c56297cd78fc5f49e53b508c50d68b45477751562b213
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.8 MB (137845880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bef9de4492ac5232ceff9c3008ed729e1922ae5f4195bc4e3205fb7fcab95c5a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 05 Oct 2026 18:29:04 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:29:04 GMT
CMD ["/bin/bash"]
# Mon, 05 Oct 2026 18:43:37 GMT
ARG version=17.0.20.12-1
# Mon, 05 Oct 2026 18:43:37 GMT
ARG package_version=1
# Mon, 05 Oct 2026 18:43:37 GMT
# ARGS: version=17.0.20.12-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 05 Oct 2026 18:43:37 GMT
ENV LANG=C.UTF-8
# Mon, 05 Oct 2026 18:43:37 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:7234d0a9b6ba1270c7bb653ee62a443a1dbb6fdfa833336edd3c0691c2524d1f`  
		Last Modified: Thu, 01 Oct 2026 02:22:29 GMT  
		Size: 54.6 MB (54630770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2c99ea295800fc5bd34f994c354876246cd74ec5d54a416abde671253802877`  
		Last Modified: Mon, 05 Oct 2026 18:43:53 GMT  
		Size: 83.2 MB (83215110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2023-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:8db2afd568141fb5755f3eaf18eec5c99716a96d7b08576c6b3e07a455472d0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5231916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74bba506999404bdac0e03329c5805a1eaaf99630980f04a9e69611365404bfa`

```dockerfile
```

-	Layers:
	-	`sha256:6a95f96d66364c1c6dd8aa7c66a2f24248cfb12c742f4679308eced249be9b10`  
		Last Modified: Mon, 05 Oct 2026 18:43:51 GMT  
		Size: 5.2 MB (5222541 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bb023d5e7ee448bd895e7ef45ebce0f85e8e68aba8357c14650503565622883f`  
		Last Modified: Mon, 05 Oct 2026 18:43:51 GMT  
		Size: 9.4 KB (9375 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:17-al2023-headful` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:ea9692aae0504fced3fb0ebbd68fe102f967e60e6bfad7b8dd6fce2b461b08f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.1 MB (136139433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f052d835a9e995d476a970a655bf8c06da393e9e11e71a9f13b36520012b6dfa`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 05 Oct 2026 18:28:31 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:28:31 GMT
CMD ["/bin/bash"]
# Mon, 05 Oct 2026 18:43:00 GMT
ARG version=17.0.20.12-1
# Mon, 05 Oct 2026 18:43:00 GMT
ARG package_version=1
# Mon, 05 Oct 2026 18:43:00 GMT
# ARGS: version=17.0.20.12-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 05 Oct 2026 18:43:00 GMT
ENV LANG=C.UTF-8
# Mon, 05 Oct 2026 18:43:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:3009834f3cf8cead1d3dea9d3cbebc711c021c4aed04759be014247a0c3181e7`  
		Last Modified: Thu, 01 Oct 2026 02:22:31 GMT  
		Size: 53.5 MB (53504398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bbf5df7bfa086a74e9d49ac6939150dda8844de164686b51e4764e0f0ee7ead`  
		Last Modified: Mon, 05 Oct 2026 18:43:18 GMT  
		Size: 82.6 MB (82635035 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2023-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:f5b00002d21390709738f8b2e8f71983c45d479102c7e7034e99fafaee28362c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5230812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71fdb460ce6f34538c221713660b0c6e72f9b3e23742fce411a9cee89df29c32`

```dockerfile
```

-	Layers:
	-	`sha256:4d41e3033f0d52a61944da2bc283d85970216794f68e195ecffb87a669a6ac94`  
		Last Modified: Mon, 05 Oct 2026 18:43:17 GMT  
		Size: 5.2 MB (5221345 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d90bb3b687ac33ae1ddeca188092cb0bd332da0557005a1640560acdd7b3cdee`  
		Last Modified: Mon, 05 Oct 2026 18:43:16 GMT  
		Size: 9.5 KB (9467 bytes)  
		MIME: application/vnd.in-toto+json
