## `amazoncorretto:11-headless`

```console
$ docker pull amazoncorretto@sha256:268f2d33eff24f3bcca4c8ad0529c9b72132988f66b4f6fe53dcb52e21660c0c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:11-headless` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:2bd1edf9531b46bfa4cf937f7e6f5b5ae260ec9e1eaead59966acc1e61facca4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.7 MB (130650878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83f2c733de2b5b6d36da762e088ab7af9ab0ab6b556612ce91ea477e31427d22`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 14 Sep 2026 23:46:16 GMT
COPY /rootfs/ / # buildkit
# Mon, 14 Sep 2026 23:46:16 GMT
CMD ["/bin/bash"]
# Tue, 15 Sep 2026 00:11:22 GMT
ARG version=11.0.32.10-1
# Tue, 15 Sep 2026 00:11:22 GMT
# ARGS: version=11.0.32.10-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 15 Sep 2026 00:11:22 GMT
ENV LANG=C.UTF-8
# Tue, 15 Sep 2026 00:11:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:0f0cc63a5845e28f771c9fceda4decc68b806470b009dae4085b441df0329b69`  
		Last Modified: Mon, 31 Aug 2026 23:14:18 GMT  
		Size: 54.6 MB (54586282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00d641d7716e707e793324c848e3951d30dd2c24fde5669a53dc91609158cbe8`  
		Last Modified: Tue, 15 Sep 2026 00:11:38 GMT  
		Size: 76.1 MB (76064596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:d11302288de34e60353a530998a7827590c9fb0f4b9561fc4fc5316ccca232cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5219326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:568448a73db24e8979b7f9e5e1d85c4a54ef1e29a16d3af25d5200b4bfdc004b`

```dockerfile
```

-	Layers:
	-	`sha256:1660263c629e8477d9e61f2150d8058cd362184178123dd6c00a0eed29b74c54`  
		Last Modified: Tue, 15 Sep 2026 00:11:36 GMT  
		Size: 5.2 MB (5210219 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2d5dc6fecf0f7a9bf9c8bd17b00c39ad99cdaa5c09531dbc07b56d675406206b`  
		Last Modified: Tue, 15 Sep 2026 00:11:35 GMT  
		Size: 9.1 KB (9107 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:11-headless` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:5c2cc584383086e9de9414254fd65bae3ec8bb67b75d4395d8b3ef210d437542
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.8 MB (128758400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cffba84d959e6207b359c2c3f277619930dcecca8684d2d6fe676cb8a54635c6`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 14 Sep 2026 23:45:56 GMT
COPY /rootfs/ / # buildkit
# Mon, 14 Sep 2026 23:45:56 GMT
CMD ["/bin/bash"]
# Tue, 15 Sep 2026 00:10:37 GMT
ARG version=11.0.32.10-1
# Tue, 15 Sep 2026 00:10:37 GMT
# ARGS: version=11.0.32.10-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 15 Sep 2026 00:10:37 GMT
ENV LANG=C.UTF-8
# Tue, 15 Sep 2026 00:10:37 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:6b98cf5afd5c5e1a58de351abf0b1ec3a4a61b63fd5a86c62edc6367d59ac249`  
		Last Modified: Mon, 31 Aug 2026 23:14:33 GMT  
		Size: 53.5 MB (53452573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09b4cae4871e2a4ff8400ba1892633eb8bb1a612d8e2c067267f75c80599eded`  
		Last Modified: Tue, 15 Sep 2026 00:10:54 GMT  
		Size: 75.3 MB (75305827 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:85ff05e420a9d0fa313e2f2d908d5ee5aa73b2516cf7facf3afddfeeb4526e19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5219048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18862eb93f4e4eff0570b16c42de95ed9f783f2aad344e3c972fbf7100e06b69`

```dockerfile
```

-	Layers:
	-	`sha256:fe0ff857c71187741e46ae26917b77f8fb7b95687d89a26e88402d568c0c8df1`  
		Last Modified: Tue, 15 Sep 2026 00:10:53 GMT  
		Size: 5.2 MB (5209849 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d725dccfe35d172dfb2e95233cbba6df47f6f2dcbab4faddf8c016531ee05add`  
		Last Modified: Tue, 15 Sep 2026 00:10:52 GMT  
		Size: 9.2 KB (9199 bytes)  
		MIME: application/vnd.in-toto+json
