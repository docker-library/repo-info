## `amazoncorretto:26-al2023-headful`

```console
$ docker pull amazoncorretto@sha256:40cc15e47798828af483d8868eff8328d3621fed6654eda4a1d85916f9cccd21
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:26-al2023-headful` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:38d939617efce1ddc57e158c4a7e75951ad4139349c53eeb13f6507c4ccdb96c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.2 MB (161202859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8d92f927eade529a49e90811b30d4d1798b68c699e45d090e679d39b751b902`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 17 Sep 2026 21:13:04 GMT
COPY /rootfs/ / # buildkit
# Thu, 17 Sep 2026 21:13:04 GMT
CMD ["/bin/bash"]
# Thu, 17 Sep 2026 22:23:21 GMT
ARG version=26.0.2.11-1
# Thu, 17 Sep 2026 22:23:21 GMT
ARG package_version=1
# Thu, 17 Sep 2026 22:23:21 GMT
# ARGS: version=26.0.2.11-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-26-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-26-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-26-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 17 Sep 2026 22:23:21 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 22:23:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-26-amazon-corretto
```

-	Layers:
	-	`sha256:0f0cc63a5845e28f771c9fceda4decc68b806470b009dae4085b441df0329b69`  
		Last Modified: Mon, 31 Aug 2026 23:14:18 GMT  
		Size: 54.6 MB (54586282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82878c3cdc0e432c0499bdae0f4ed09b4a6aaf5a286763f9401d24f9d03e4430`  
		Last Modified: Thu, 17 Sep 2026 22:23:41 GMT  
		Size: 106.6 MB (106616577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:26-al2023-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:2acea9134febcae766756bb2e9d313a3be7f82efa9704275770577e66accce96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5241832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a910be9c20927c3f73f77aaa780dead8c9fc28a78b7cc5fb1ec68e2e12bfb54e`

```dockerfile
```

-	Layers:
	-	`sha256:6a4858aecb3f9cad2367074b2aaca2c03d4496cc6a808eb3ac24354bffa41a73`  
		Last Modified: Thu, 17 Sep 2026 22:23:38 GMT  
		Size: 5.2 MB (5232463 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0a678ec1206e0d9d58d34ce30ee64e994233d1699f19d69f5599cc43d0f7a740`  
		Last Modified: Thu, 17 Sep 2026 22:23:38 GMT  
		Size: 9.4 KB (9369 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:26-al2023-headful` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:867a56c3225feb5fbb981483cf40dd509f9c946d33daf94f6361f3d7cd529b76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.0 MB (158975058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b4c1e077299fe56e2a55b2273d107bb92b5cd5164f2511f830d44b0873af719`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 17 Sep 2026 21:12:44 GMT
COPY /rootfs/ / # buildkit
# Thu, 17 Sep 2026 21:12:44 GMT
CMD ["/bin/bash"]
# Thu, 17 Sep 2026 22:47:36 GMT
ARG version=26.0.2.11-1
# Thu, 17 Sep 2026 22:47:36 GMT
ARG package_version=1
# Thu, 17 Sep 2026 22:47:36 GMT
# ARGS: version=26.0.2.11-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-26-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-26-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-26-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 17 Sep 2026 22:47:36 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 22:47:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-26-amazon-corretto
```

-	Layers:
	-	`sha256:6b98cf5afd5c5e1a58de351abf0b1ec3a4a61b63fd5a86c62edc6367d59ac249`  
		Last Modified: Mon, 31 Aug 2026 23:14:33 GMT  
		Size: 53.5 MB (53452573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a30d1322261b5e5d5be9aa5e443c08141b7bedc724a06531fa7e1b01684dbedd`  
		Last Modified: Thu, 17 Sep 2026 22:47:58 GMT  
		Size: 105.5 MB (105522485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:26-al2023-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:cc26cd56671cf2506f5bb32e32aeb1f9111dc47c14737e7f559418f51702264c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5240737 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5908116555b48b275c997bf62aba23c99802a3ddb15d554033fa872827f7c43e`

```dockerfile
```

-	Layers:
	-	`sha256:66e3b74b76dcbc2f6a4b30a60167d32cef93b5fce4a525388ddcdd59c7f6c265`  
		Last Modified: Thu, 17 Sep 2026 22:47:55 GMT  
		Size: 5.2 MB (5231276 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:357512f23a220e05953eb8fb44a54c217d2c70cda63010089f9e08e1945ddda3`  
		Last Modified: Thu, 17 Sep 2026 22:47:55 GMT  
		Size: 9.5 KB (9461 bytes)  
		MIME: application/vnd.in-toto+json
