## `amazoncorretto:27-al2023-headful`

```console
$ docker pull amazoncorretto@sha256:8c50eb19ac6752021a41423f067ab05fc03e0845907600ea1fb8089b51cf9acb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:27-al2023-headful` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:bc573ed940948d9937812ddce92d4265dc34820f916bc07f744104f84277ee1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.5 MB (160540575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ee77149fbf801ecd62f965119e5750ccd57ca59dd51fdc09acf7fd89c168db0`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 05 Nov 2026 18:52:15 GMT
COPY /rootfs/ / # buildkit
# Thu, 05 Nov 2026 18:52:15 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 20:00:26 GMT
ARG version=27.0.1.0.11-1
# Thu, 05 Nov 2026 20:00:26 GMT
ARG resource_version=27.0.1.0.11
# Thu, 05 Nov 2026 20:00:26 GMT
ARG package_version=1
# Thu, 05 Nov 2026 20:00:26 GMT
# ARGS: version=27.0.1.0.11-1 resource_version=27.0.1.0.11 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-27-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-27-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 05 Nov 2026 20:00:26 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 20:00:26 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-amazon-corretto
```

-	Layers:
	-	`sha256:36d0e51e1ea56325505d833f7d87567b6720c396e9a5742de0f157b063545163`  
		Last Modified: Sat, 31 Oct 2026 02:35:05 GMT  
		Size: 54.6 MB (54569615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05a2e8f0f29d1fe3702b02e8cac8507dded1b4aadfe48214415a6103938318b5`  
		Last Modified: Thu, 05 Nov 2026 20:00:47 GMT  
		Size: 106.0 MB (105970960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:27-al2023-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:e4dbebb2dc028b286fb9992895b4f1cfabc4268fe20aeebcf55fabb479ce1dcf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5240267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:620f848381f8d790db2148eb2c1a433b42ac5385fabe08f6644875b003ac1167`

```dockerfile
```

-	Layers:
	-	`sha256:0d4f1d134deda8699ce9c54521395033ced1b73ba2ad78c68d4064a72644f95d`  
		Last Modified: Thu, 05 Nov 2026 20:00:44 GMT  
		Size: 5.2 MB (5230837 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bfa111c895feebef221bbcbf4cf9b6954c3efb27c1ef79793491b1c40f51aa13`  
		Last Modified: Thu, 05 Nov 2026 20:00:44 GMT  
		Size: 9.4 KB (9430 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:27-al2023-headful` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:fca7b10988e099d6c9caae6b9288f649d58177e8ae58f75fef38333020f0ea18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.5 MB (158481638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9149fb43e3fdebb2da82933ce1065249a108f456b6b97f32b76f87d06fe79478`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 02 Nov 2026 19:55:47 GMT
COPY /rootfs/ / # buildkit
# Mon, 02 Nov 2026 19:55:47 GMT
CMD ["/bin/bash"]
# Mon, 02 Nov 2026 20:11:44 GMT
ARG version=27.0.1.0.11-1
# Mon, 02 Nov 2026 20:11:44 GMT
ARG resource_version=27.0.1.0.11
# Mon, 02 Nov 2026 20:11:44 GMT
ARG package_version=1
# Mon, 02 Nov 2026 20:11:44 GMT
# ARGS: version=27.0.1.0.11-1 resource_version=27.0.1.0.11 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-27-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-27-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 02 Nov 2026 20:11:44 GMT
ENV LANG=C.UTF-8
# Mon, 02 Nov 2026 20:11:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-amazon-corretto
```

-	Layers:
	-	`sha256:c1eee8f81fa5e953bb6eab0ff6f612967f0ef8b1dc9fac3cb2319b1021f7a245`  
		Last Modified: Sat, 31 Oct 2026 02:35:03 GMT  
		Size: 53.5 MB (53456123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9564bdb0bf4ea4831a67967fc43e8d0298121d183c88380caf5744c892d6b25f`  
		Last Modified: Mon, 02 Nov 2026 20:12:05 GMT  
		Size: 105.0 MB (105025515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:27-al2023-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:412dcffc811a7fac6dfc4ebbfef1e8d5d49ee1b1db96387d0108882782ebab40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5239169 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:daa0eb18bd49d4fb1dc65d961320cb1a424c233a913a5630f258c64b6f83de75`

```dockerfile
```

-	Layers:
	-	`sha256:6049da94550a33d38a061537400b9d7af3fc96277dc025d125cc6d1b0db45fb1`  
		Last Modified: Mon, 02 Nov 2026 20:12:03 GMT  
		Size: 5.2 MB (5229648 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:425287c4c708a485e0cb8a8228b9c30f6a1d5894e82ed1eb7deffb9ab63ce0be`  
		Last Modified: Mon, 02 Nov 2026 20:12:03 GMT  
		Size: 9.5 KB (9521 bytes)  
		MIME: application/vnd.in-toto+json
