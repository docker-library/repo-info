## `amazoncorretto:26-jdk`

```console
$ docker pull amazoncorretto@sha256:bdcbcc897ae7d8f8594379d99d0c28ade55cca3bbf5a334eb3fe53bb1789453f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:26-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:d4ae659ddd92602721a7bdc1db04e64b25393703af21ebede7af148b163a56fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.3 MB (248296554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60f12a4046be858779c786a12f2e7a9465a55de763b47a335a6de4792998902c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Oct 2026 00:41:03 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:41:03 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 18:10:06 GMT
ARG version=26.0.2.11-1
# Fri, 23 Oct 2026 18:10:06 GMT
ARG resource_version=26.0.2.11.1
# Fri, 23 Oct 2026 18:10:06 GMT
ARG package_version=1
# Fri, 23 Oct 2026 18:10:06 GMT
# ARGS: version=26.0.2.11-1 resource_version=26.0.2.11.1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-26-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-26-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-26-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-26-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-26-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 23 Oct 2026 18:10:06 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 18:10:06 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-26-amazon-corretto
```

-	Layers:
	-	`sha256:da3e7a9e0d7ce8bd2e34f464f7fc47c97dde7880b26078690ed76ef5809d8b69`  
		Last Modified: Thu, 22 Oct 2026 01:38:41 GMT  
		Size: 54.6 MB (54648920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63a86590f6b1d2f3b36f1054b9b75de5e0e1f94bc895664c1b0d2535d8620cb4`  
		Last Modified: Fri, 23 Oct 2026 18:10:29 GMT  
		Size: 193.6 MB (193647634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:26-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:c50917293b82cc3435f8022129db81d2c22c2430491378ac86d1e66cb5fbd35b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5350083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:160d6f01fccbf0ccaebdfe3c596be25abc059ed24680d4f6f33e85f9581d6337`

```dockerfile
```

-	Layers:
	-	`sha256:abf3d83def6b825d23558caddc6fca9359e37dc18e7e0b04a135107817b6259f`  
		Last Modified: Fri, 23 Oct 2026 18:10:25 GMT  
		Size: 5.3 MB (5339377 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8499569c230cef42fb25f44db0a3a5bd05dd381ef92f9d974c5ef37b39b59c81`  
		Last Modified: Fri, 23 Oct 2026 18:10:25 GMT  
		Size: 10.7 KB (10706 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:26-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:c081218d76a6376507296f41309e7ee2d78c46765799887a977ae704da3983a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.0 MB (244992038 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a03c0ee71d64186d223c7729c4126e85dc0e204822568dd4abb0fe4086a6145`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Oct 2026 00:40:43 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:40:43 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 18:10:13 GMT
ARG version=26.0.2.11-1
# Fri, 23 Oct 2026 18:10:13 GMT
ARG resource_version=26.0.2.11.1
# Fri, 23 Oct 2026 18:10:13 GMT
ARG package_version=1
# Fri, 23 Oct 2026 18:10:13 GMT
# ARGS: version=26.0.2.11-1 resource_version=26.0.2.11.1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-26-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-26-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-26-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-26-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-26-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 23 Oct 2026 18:10:13 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 18:10:13 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-26-amazon-corretto
```

-	Layers:
	-	`sha256:b9de6aa56dd75608aa129f8d7c4af23dae5b1bb2a5a2edb4e9acfd307a0af336`  
		Last Modified: Thu, 22 Oct 2026 02:52:33 GMT  
		Size: 53.5 MB (53529316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bbf13e951bd66d9656f3242bd469e5e44e13a9075dace5e4f324e6a08b322b8`  
		Last Modified: Fri, 23 Oct 2026 18:10:38 GMT  
		Size: 191.5 MB (191462722 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:26-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:cae4f9620e8d48d688fefb0b16ab041004ab823aa17c889b4709c1fc687ca6f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5349187 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29b323e7616f07892226885fc1494db1e2168b2b68545513419efa05023a52fc`

```dockerfile
```

-	Layers:
	-	`sha256:2bd45a65ba0b5a6b29d5e1bc2140747d5745fd2006bd28433829e19a5d9cd5c1`  
		Last Modified: Fri, 23 Oct 2026 18:10:34 GMT  
		Size: 5.3 MB (5338353 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6c6e6a80317f74c60fd7456f73083efae0ef510a9385b9b1755dfc2d1ac48d33`  
		Last Modified: Fri, 23 Oct 2026 18:10:34 GMT  
		Size: 10.8 KB (10834 bytes)  
		MIME: application/vnd.in-toto+json
