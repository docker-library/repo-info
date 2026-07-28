## `amazoncorretto:21-headful`

```console
$ docker pull amazoncorretto@sha256:7c60bb6bbca302e286bfa4acc2f81117680e5811064100a06f2176f3cdc000cd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:21-headful` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:afc6ddeef5bca424f2f930b09a60be56d8873766d5acb9c906f5862d77aa6375
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.7 MB (144653027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39417faca00e07be5ac07d30660d3f29ecabd34cf81910e75c76a9de315a7cc4`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 27 Jul 2026 21:19:13 GMT
COPY /rootfs/ / # buildkit
# Mon, 27 Jul 2026 21:19:13 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 21:37:28 GMT
ARG version=21.0.12.8-1
# Mon, 27 Jul 2026 21:37:28 GMT
ARG package_version=1
# Mon, 27 Jul 2026 21:37:28 GMT
# ARGS: version=21.0.12.8-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 27 Jul 2026 21:37:28 GMT
ENV LANG=C.UTF-8
# Mon, 27 Jul 2026 21:37:28 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
```

-	Layers:
	-	`sha256:5492e2c54dedbfa8cbd57605d23f9468dae3f869273566ed212185e48340d5d5`  
		Last Modified: Fri, 24 Jul 2026 21:00:37 GMT  
		Size: 54.6 MB (54572684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6882c224255e565665907311f2c1706b0cc1426e36dabf9dee5644599745de7`  
		Last Modified: Mon, 27 Jul 2026 21:37:47 GMT  
		Size: 90.1 MB (90080343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:4fd2331d0e40962d24345bed6a2b41f7afe3d80275da4b195f3491716cebe905
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5233526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f78c7ab3b6c882facfbd7913399edb66463801006c7ea41162909afe891042f`

```dockerfile
```

-	Layers:
	-	`sha256:4bf23eaa818153d1dc43f6bf6707ac56a443df7ed4a4a24e103da9f1647ed2cc`  
		Last Modified: Mon, 27 Jul 2026 21:37:45 GMT  
		Size: 5.2 MB (5224156 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b931aaff1af74f58937d8598f6b5707b838b83e38322b246ef72ba2421ab62c9`  
		Last Modified: Mon, 27 Jul 2026 21:37:45 GMT  
		Size: 9.4 KB (9370 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:21-headful` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:e5046d54f89d994570c26fe123d49b60a48269ca5acad6edfc92d940d23d3a28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.7 MB (142666323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46d67fce24168554dc7c244d7c33eeceb602665bffee69fa2e090030dbfc64cd`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 27 Jul 2026 21:19:12 GMT
COPY /rootfs/ / # buildkit
# Mon, 27 Jul 2026 21:19:12 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 21:36:44 GMT
ARG version=21.0.12.8-1
# Mon, 27 Jul 2026 21:36:44 GMT
ARG package_version=1
# Mon, 27 Jul 2026 21:36:44 GMT
# ARGS: version=21.0.12.8-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 27 Jul 2026 21:36:44 GMT
ENV LANG=C.UTF-8
# Mon, 27 Jul 2026 21:36:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
```

-	Layers:
	-	`sha256:07006faf6af6164a3570dfc90b2fce3d8038766e9e8572e8cc38b3a1eb8bbdd7`  
		Last Modified: Fri, 24 Jul 2026 21:55:34 GMT  
		Size: 53.4 MB (53449611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23bf211e4a7e7a4df55eac467d87bc7a26c249297fa131db4a540f6a69491e99`  
		Last Modified: Mon, 27 Jul 2026 21:37:03 GMT  
		Size: 89.2 MB (89216712 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:de683455638fdd2c42a531bf686b29648a12333a403f7018338c35c265d4dbdf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5232424 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70d947fd1b269a81a04d59d903aac4e1e385692982d012c513c361a3303f07e2`

```dockerfile
```

-	Layers:
	-	`sha256:350500d2c0223c572ada3ac74455514d64759d3d3d95b05f16ea83295e5f801e`  
		Last Modified: Mon, 27 Jul 2026 21:37:01 GMT  
		Size: 5.2 MB (5222962 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a89b65f2f23eb4a36d806d9d39fd0fc0a8105c1a52fc80aa516a6dd2c9f24f62`  
		Last Modified: Mon, 27 Jul 2026 21:37:01 GMT  
		Size: 9.5 KB (9462 bytes)  
		MIME: application/vnd.in-toto+json
