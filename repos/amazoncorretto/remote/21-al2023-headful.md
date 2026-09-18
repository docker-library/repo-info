## `amazoncorretto:21-al2023-headful`

```console
$ docker pull amazoncorretto@sha256:be4d5c6501fe841febd72baee8f194e72c608ffc8873ebe960e6f50111851ba5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:21-al2023-headful` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:1765feae7e8084c7393c374dc6b8575a514ad1cfd4cc83f590f9f90c2360789e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.7 MB (144664410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8cf1d1ad8045abe912a3306216a23ec67c130700203cf682a4fc96e6dd466dbb`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 14 Sep 2026 23:46:16 GMT
COPY /rootfs/ / # buildkit
# Mon, 14 Sep 2026 23:46:16 GMT
CMD ["/bin/bash"]
# Tue, 15 Sep 2026 00:12:29 GMT
ARG version=21.0.12.9-1
# Tue, 15 Sep 2026 00:12:29 GMT
ARG package_version=1
# Tue, 15 Sep 2026 00:12:29 GMT
# ARGS: version=21.0.12.9-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 15 Sep 2026 00:12:29 GMT
ENV LANG=C.UTF-8
# Tue, 15 Sep 2026 00:12:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
```

-	Layers:
	-	`sha256:0f0cc63a5845e28f771c9fceda4decc68b806470b009dae4085b441df0329b69`  
		Last Modified: Mon, 31 Aug 2026 23:14:18 GMT  
		Size: 54.6 MB (54586282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a1a1739841c865791ab165caace5341a94e2e6237a1e6c3c0ae694428e3feeb`  
		Last Modified: Tue, 15 Sep 2026 00:12:48 GMT  
		Size: 90.1 MB (90078128 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-al2023-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:199a60cf18aae250e842216357483b419954ae5c3dc66c585af4b9b68ea2bc5a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5233530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ed039b06af0739abf9d7c0c504eba5266a20f7e22e616afb3358dc52568628f`

```dockerfile
```

-	Layers:
	-	`sha256:b678c8d73b2ecd1c9421d93ddfae3a49ba3a5ad1cde6b22ce914698fc4b7fe1c`  
		Last Modified: Tue, 15 Sep 2026 00:12:46 GMT  
		Size: 5.2 MB (5224160 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7413d261fb5ada96ae37dee46bebb4b5ff161b18e99074aa2aa933f7c3d9c449`  
		Last Modified: Tue, 15 Sep 2026 00:12:46 GMT  
		Size: 9.4 KB (9370 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:21-al2023-headful` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:f680855d96fd612080a20231132d657027b7b204573689661bcd95f2e6c3a360
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.7 MB (142661855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31cb85fcf2cfc4021c8efef52b8a90afbe56892b27f95f8cc2394e0233ee3b78`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 17 Sep 2026 21:12:44 GMT
COPY /rootfs/ / # buildkit
# Thu, 17 Sep 2026 21:12:44 GMT
CMD ["/bin/bash"]
# Thu, 17 Sep 2026 22:47:04 GMT
ARG version=21.0.12.9-1
# Thu, 17 Sep 2026 22:47:04 GMT
ARG package_version=1
# Thu, 17 Sep 2026 22:47:04 GMT
# ARGS: version=21.0.12.9-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 17 Sep 2026 22:47:04 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 22:47:04 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
```

-	Layers:
	-	`sha256:6b98cf5afd5c5e1a58de351abf0b1ec3a4a61b63fd5a86c62edc6367d59ac249`  
		Last Modified: Mon, 31 Aug 2026 23:14:33 GMT  
		Size: 53.5 MB (53452573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46564f819a74131f7d4c186ae046d131826c1aac7ae7f39d53b6d551b6fff0aa`  
		Last Modified: Thu, 17 Sep 2026 22:47:23 GMT  
		Size: 89.2 MB (89209282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-al2023-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:3b4cd5429fe44ab112a23a6c989e69d90c406908dca7bb3d36014d2b5828b2f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5232426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:129ec8fd718d771172a6948126f0cf38fc92a87241a063df5f94041e90097fae`

```dockerfile
```

-	Layers:
	-	`sha256:7c24b2a227b00b5a8c69cb552ff59d9cfaa4c02979b001626212a5fce3ecc3ed`  
		Last Modified: Thu, 17 Sep 2026 22:47:21 GMT  
		Size: 5.2 MB (5222966 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:70f1c1d5ac1f95318cff969564772f317f8901c3194769ec5a65828cb0f7956d`  
		Last Modified: Thu, 17 Sep 2026 22:47:21 GMT  
		Size: 9.5 KB (9460 bytes)  
		MIME: application/vnd.in-toto+json
