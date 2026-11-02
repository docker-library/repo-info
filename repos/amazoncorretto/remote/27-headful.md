## `amazoncorretto:27-headful`

```console
$ docker pull amazoncorretto@sha256:26fdf8fa0098abd599251d1f41867693c610744647c3f91eedfa7097d650f67d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:27-headful` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:274160f059d24aa656f9c64911b99beda32b5b3cd526e973345fec0cc02bc1da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.5 MB (160540550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c28183a555dc5ab1dbdbd050a1b1bf5472d682731db28ad4a3c6734dd0656ec3`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 02 Nov 2026 19:55:48 GMT
COPY /rootfs/ / # buildkit
# Mon, 02 Nov 2026 19:55:48 GMT
CMD ["/bin/bash"]
# Mon, 02 Nov 2026 20:12:01 GMT
ARG version=27.0.1.0.11-1
# Mon, 02 Nov 2026 20:12:01 GMT
ARG resource_version=27.0.1.0.11
# Mon, 02 Nov 2026 20:12:01 GMT
ARG package_version=1
# Mon, 02 Nov 2026 20:12:01 GMT
# ARGS: version=27.0.1.0.11-1 resource_version=27.0.1.0.11 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-27-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-27-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 02 Nov 2026 20:12:01 GMT
ENV LANG=C.UTF-8
# Mon, 02 Nov 2026 20:12:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-amazon-corretto
```

-	Layers:
	-	`sha256:36d0e51e1ea56325505d833f7d87567b6720c396e9a5742de0f157b063545163`  
		Last Modified: Sat, 31 Oct 2026 02:35:05 GMT  
		Size: 54.6 MB (54569615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78f13a1dbfaa60bc98c5e820044a60c4fc4374a766c142381e26b7c35b0d4cb8`  
		Last Modified: Mon, 02 Nov 2026 20:12:21 GMT  
		Size: 106.0 MB (105970935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:27-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:969b9a524b106f447e93508c9adf239f5e59180097b30a027de14d14490701fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5240267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f283dd74c160100adb4edb2f16b92127d83efbe2e20da5e01e7a504ff908a95`

```dockerfile
```

-	Layers:
	-	`sha256:7808292cdb50b7d62ca13e69025d78ed12676d4f6001ed6112ba4ad4455bc0aa`  
		Last Modified: Mon, 02 Nov 2026 20:12:19 GMT  
		Size: 5.2 MB (5230837 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dd503c4abd07ed036727996dc55c562d48044cd971db994f5ea1be98d56ea2d7`  
		Last Modified: Mon, 02 Nov 2026 20:12:19 GMT  
		Size: 9.4 KB (9430 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:27-headful` - linux; arm64 variant v8

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

### `amazoncorretto:27-headful` - unknown; unknown

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
