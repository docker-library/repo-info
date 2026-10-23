## `amazoncorretto:25-headful`

```console
$ docker pull amazoncorretto@sha256:4a28ae55b8e0eb7dad8e8eb6d127e71aa4503625ce5cddddb8ac401b34092e32
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:25-headful` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:b668b79009d00a7ff92b70250b2ba9915b637ba92f6b842993d5b33abf8323ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.2 MB (159219329 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0e113c5eca4109604a836ff75ee3553f098ce90b85bbb06134a0a4bdb71ee47`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Oct 2026 00:41:03 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:41:03 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 18:09:54 GMT
ARG version=25.0.5.0.9-1
# Fri, 23 Oct 2026 18:09:54 GMT
ARG resource_version=25.0.5.0.9
# Fri, 23 Oct 2026 18:09:54 GMT
ARG package_version=1
# Fri, 23 Oct 2026 18:09:54 GMT
# ARGS: version=25.0.5.0.9-1 resource_version=25.0.5.0.9 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 23 Oct 2026 18:09:54 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 18:09:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
```

-	Layers:
	-	`sha256:da3e7a9e0d7ce8bd2e34f464f7fc47c97dde7880b26078690ed76ef5809d8b69`  
		Last Modified: Thu, 22 Oct 2026 01:38:41 GMT  
		Size: 54.6 MB (54648920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13cfc6356af91ad1e69f30cefc2abef20b4ed086c39e16dcf370ec500a8c2625`  
		Last Modified: Fri, 23 Oct 2026 18:10:15 GMT  
		Size: 104.6 MB (104570409 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:899c47e2cc99be50e16ad9f57ec5c31b7debf5b7d158eb82b2d3eefe32b90c58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5243526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf633f9f97e0e1d94a002c151a71464c15dbe310eac4f9501ed8a69896ad52cc`

```dockerfile
```

-	Layers:
	-	`sha256:e47a3ece4cb89f2fe4e0735850b4e1a60531f60cde1764bf8b262c0b8f7e3cc5`  
		Last Modified: Fri, 23 Oct 2026 18:10:13 GMT  
		Size: 5.2 MB (5234102 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a43c22d3226819e993947f3c147bbe88f75701fcac096499e6a084bb315e7f47`  
		Last Modified: Fri, 23 Oct 2026 18:10:12 GMT  
		Size: 9.4 KB (9424 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:25-headful` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:7711e47d0778c9bcd1f15133fb48d93f70e84a3c4b4b7bd18be1431d62785f1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.0 MB (157029203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da7893d66ba45bb2202c2ff507bec0fd4711734157b51e9158e6e150570708b1`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Oct 2026 00:40:43 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:40:43 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 18:09:48 GMT
ARG version=25.0.5.0.9-1
# Fri, 23 Oct 2026 18:09:48 GMT
ARG resource_version=25.0.5.0.9
# Fri, 23 Oct 2026 18:09:48 GMT
ARG package_version=1
# Fri, 23 Oct 2026 18:09:48 GMT
# ARGS: version=25.0.5.0.9-1 resource_version=25.0.5.0.9 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 23 Oct 2026 18:09:48 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 18:09:48 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
```

-	Layers:
	-	`sha256:b9de6aa56dd75608aa129f8d7c4af23dae5b1bb2a5a2edb4e9acfd307a0af336`  
		Last Modified: Thu, 22 Oct 2026 02:52:33 GMT  
		Size: 53.5 MB (53529316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8684a0c280734b739ff26349691c7bd969e2d8a7c4234686131faf25177df177`  
		Last Modified: Fri, 23 Oct 2026 18:10:09 GMT  
		Size: 103.5 MB (103499887 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:dc0891742781435d689e01bfbfa6159ba9909d711c5cbf14040c9233d9822b67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5242433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbb6036f4207930c3f41944a0ff9a0728ecdfc6634612057996d70d63c14c4c9`

```dockerfile
```

-	Layers:
	-	`sha256:5be038db999c1f3474e9ffd07af5b28ba46e32d97e6702d984417b8c9c59a4e7`  
		Last Modified: Fri, 23 Oct 2026 18:10:07 GMT  
		Size: 5.2 MB (5232917 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:237fc0580b2951cc1dc7948465e891fa2d2df7c6b8a85144638045e88a27991d`  
		Last Modified: Fri, 23 Oct 2026 18:10:07 GMT  
		Size: 9.5 KB (9516 bytes)  
		MIME: application/vnd.in-toto+json
