## `amazoncorretto:26-headful`

```console
$ docker pull amazoncorretto@sha256:4969efc3d5a2d056c7e438c3991fd0a02ae7676a3e7c6e0739f80f226b7823f9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:26-headful` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:7c7c4e01c6aa42661cad21f2762a2797ad792f56887f54e68f2dfc9870615e34
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.2 MB (161193584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c632a84c1bb48243ace18f3d5c5ea3dc1424b0ac51dbc14ffeac95adc7d9f50d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 04 Aug 2026 00:27:38 GMT
COPY /rootfs/ / # buildkit
# Tue, 04 Aug 2026 00:27:38 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 00:58:49 GMT
ARG version=26.0.2.10-1
# Tue, 04 Aug 2026 00:58:49 GMT
ARG package_version=1
# Tue, 04 Aug 2026 00:58:49 GMT
# ARGS: version=26.0.2.10-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-26-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-26-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-26-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 04 Aug 2026 00:58:49 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 00:58:49 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-26-amazon-corretto
```

-	Layers:
	-	`sha256:1c635d63e15b914a52c850733b73b200164c1b4f22ce422b48b4130f93dee906`  
		Last Modified: Tue, 28 Jul 2026 03:02:31 GMT  
		Size: 54.6 MB (54572680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:632b06f5c7bc2ea9ad49177b69495fdf10c063b80074da12b6618121a71cec04`  
		Last Modified: Tue, 04 Aug 2026 00:59:09 GMT  
		Size: 106.6 MB (106620904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:26-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:89caa6226110890dfd4d2196771ab36ef147ea815d3c52b40379b757b4cff686
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5241828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62818d8a8b80b08f52913e4595a81429cb3e8ee8130e394926120a9e8b8e51b0`

```dockerfile
```

-	Layers:
	-	`sha256:866358c3aa5b3fd624f06ee17315e7491cf8cdadc7d9cdf6dba22cc257a8b6e6`  
		Last Modified: Tue, 04 Aug 2026 00:59:06 GMT  
		Size: 5.2 MB (5232459 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6d28d844d9d19eed977f70b2a04c14b2fc47f6846ac381446d9735140bf5942b`  
		Last Modified: Tue, 04 Aug 2026 00:59:06 GMT  
		Size: 9.4 KB (9369 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:26-headful` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:b91a5c204ad15dd6dfb30deccf2085c2149b2205b3ae33cbb641b2e0aba1ae5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.0 MB (158976053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66b93cf5ad3d6b736d823e769374b3467c79edfb33e6a7834932d2f0f2fa9fa0`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 04 Aug 2026 00:27:37 GMT
COPY /rootfs/ / # buildkit
# Tue, 04 Aug 2026 00:27:37 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 00:58:34 GMT
ARG version=26.0.2.10-1
# Tue, 04 Aug 2026 00:58:34 GMT
ARG package_version=1
# Tue, 04 Aug 2026 00:58:34 GMT
# ARGS: version=26.0.2.10-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-26-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-26-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-26-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 04 Aug 2026 00:58:34 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 00:58:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-26-amazon-corretto
```

-	Layers:
	-	`sha256:0d194348effd1a9f66c459a1b81ed9823b1301b8d182e914b8ddc71c54c528e5`  
		Last Modified: Tue, 28 Jul 2026 08:44:17 GMT  
		Size: 53.4 MB (53448657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:550519eedae6d95d3b534952f76ff21dcecdb0052b155c07dd9f225e3e8c989d`  
		Last Modified: Tue, 04 Aug 2026 00:58:55 GMT  
		Size: 105.5 MB (105527396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:26-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:7936981e2982fb92b374bac1f67cf0dd6adf432a1aab3c2302ec637d92515970
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5240733 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4538e5838a2a88c0e08467c356bf8dae66d684ea1878ee5069e6b77e816e4c30`

```dockerfile
```

-	Layers:
	-	`sha256:630e3c5f790622e19c5324eb467686d7e31f107fc5cad6c8d3c04274b3dd40b8`  
		Last Modified: Tue, 04 Aug 2026 00:58:53 GMT  
		Size: 5.2 MB (5231272 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:973b2e6de058614b824adce0d7045cf7bce3850049c5e5d340ce4b4e0ce27868`  
		Last Modified: Tue, 04 Aug 2026 00:58:52 GMT  
		Size: 9.5 KB (9461 bytes)  
		MIME: application/vnd.in-toto+json
