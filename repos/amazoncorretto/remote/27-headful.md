## `amazoncorretto:27-headful`

```console
$ docker pull amazoncorretto@sha256:fbbffe5c4fe642c6b2674f6e2037ccb540a0b3d1ba15a3607fe83f492a1408f5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:27-headful` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:2abe60da7dca6d8945cb99084f12bcc31d336acc08b305b61122372da07faae0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.6 MB (160618358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f06534838571c56237abf18eb3349a422d311e387804cf34eb58c50539eafd9`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Oct 2026 00:41:03 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:41:03 GMT
CMD ["/bin/bash"]
# Fri, 30 Oct 2026 19:45:31 GMT
ARG version=27.0.1.0.11-1
# Fri, 30 Oct 2026 19:45:31 GMT
ARG resource_version=27.0.1.0.11
# Fri, 30 Oct 2026 19:45:31 GMT
ARG package_version=1
# Fri, 30 Oct 2026 19:45:31 GMT
# ARGS: version=27.0.1.0.11-1 resource_version=27.0.1.0.11 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-27-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-27-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 30 Oct 2026 19:45:31 GMT
ENV LANG=C.UTF-8
# Fri, 30 Oct 2026 19:45:31 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-amazon-corretto
```

-	Layers:
	-	`sha256:da3e7a9e0d7ce8bd2e34f464f7fc47c97dde7880b26078690ed76ef5809d8b69`  
		Last Modified: Thu, 22 Oct 2026 01:38:41 GMT  
		Size: 54.6 MB (54648920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef7aaadccd3c52684b0144370bb4f3972bd3219ec0162f6d7fcceef9f02661db`  
		Last Modified: Fri, 30 Oct 2026 19:45:53 GMT  
		Size: 106.0 MB (105969438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:27-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:ecd377c49742fea70e7030c8d5a20301a5a785e70b177b0af548f6175cd8c1d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5240261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c24d73d0ded442b73f7f78e8b3b09e79e47b617f3c37da22731a4fada8881b89`

```dockerfile
```

-	Layers:
	-	`sha256:0808ecae5a18e4646d6aadfae3dd0081c92a852f95c85e08c702923fa315aac7`  
		Last Modified: Fri, 30 Oct 2026 19:45:50 GMT  
		Size: 5.2 MB (5230831 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:daad9cb8b7ff82fcba00a3ec0099447b16f74207dc22c15206350d0e63abd119`  
		Last Modified: Fri, 30 Oct 2026 19:45:50 GMT  
		Size: 9.4 KB (9430 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:27-headful` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:e2cc2cf239f2f23e3030782f07e7d51ab866dd0ee5ffa25d7581ab3337360e4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.6 MB (158552216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:142f6da50ba62e77612b912f42dee980f3dd8f56c47744fefbb75e83e6e1c4de`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Oct 2026 00:40:43 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:40:43 GMT
CMD ["/bin/bash"]
# Fri, 30 Oct 2026 19:45:26 GMT
ARG version=27.0.1.0.11-1
# Fri, 30 Oct 2026 19:45:26 GMT
ARG resource_version=27.0.1.0.11
# Fri, 30 Oct 2026 19:45:26 GMT
ARG package_version=1
# Fri, 30 Oct 2026 19:45:26 GMT
# ARGS: version=27.0.1.0.11-1 resource_version=27.0.1.0.11 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-27-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-27-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 30 Oct 2026 19:45:26 GMT
ENV LANG=C.UTF-8
# Fri, 30 Oct 2026 19:45:26 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-amazon-corretto
```

-	Layers:
	-	`sha256:b9de6aa56dd75608aa129f8d7c4af23dae5b1bb2a5a2edb4e9acfd307a0af336`  
		Last Modified: Thu, 22 Oct 2026 02:52:33 GMT  
		Size: 53.5 MB (53529316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6952d9b008d267aa36c2c08afc6772f9404c0dd9c7c96248c51b4fa84834994a`  
		Last Modified: Fri, 30 Oct 2026 19:45:48 GMT  
		Size: 105.0 MB (105022900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:27-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:4f2bd123740e2cdc55211080ffdb7d7a34428cc6a543ee7405776b91a6591d3e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5239164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9904995a6d067ba17ce498d8ce07f33059f06a752a3b11a43df27f2d1e7a4db4`

```dockerfile
```

-	Layers:
	-	`sha256:129db81d9450210dabf9ab63eef8d274da116d1cc6ab91d370a1c83160f7a111`  
		Last Modified: Fri, 30 Oct 2026 19:45:46 GMT  
		Size: 5.2 MB (5229642 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6fb2a7d93463c70fcf85b9f3a37b2a53c84eb3572d26aca22e158d64be5eec04`  
		Last Modified: Fri, 30 Oct 2026 19:45:45 GMT  
		Size: 9.5 KB (9522 bytes)  
		MIME: application/vnd.in-toto+json
