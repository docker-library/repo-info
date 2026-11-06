## `amazoncorretto:17-headless`

```console
$ docker pull amazoncorretto@sha256:e3fb3688f856ae0416d1a3737ecee0df33954124b861f86655f9f562e81a6196
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-headless` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:49c936ee442e4d88f0bbf9c406351b6104afe113607fad635d7345c455ab52d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.2 MB (137171353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f33aed43b6a26cdb1337ceb9d3d9f98a4f26c49a70000db32e6860a7e1af93df`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 05 Nov 2026 18:52:15 GMT
COPY /rootfs/ / # buildkit
# Thu, 05 Nov 2026 18:52:15 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 19:59:12 GMT
ARG version=17.0.21.0.11-1
# Thu, 05 Nov 2026 19:59:12 GMT
ARG resource_version=17.0.21.0.11
# Thu, 05 Nov 2026 19:59:12 GMT
ARG package_version=1
# Thu, 05 Nov 2026 19:59:12 GMT
# ARGS: version=17.0.21.0.11-1 resource_version=17.0.21.0.11 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 05 Nov 2026 19:59:12 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:59:12 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:36d0e51e1ea56325505d833f7d87567b6720c396e9a5742de0f157b063545163`  
		Last Modified: Sat, 31 Oct 2026 02:35:05 GMT  
		Size: 54.6 MB (54569615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:757a7b77138c511853e3707a678c19ce74ed4eff7260463e8e03b44922042ede`  
		Last Modified: Thu, 05 Nov 2026 19:59:29 GMT  
		Size: 82.6 MB (82601738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:a4cfb317616618b730b96adb50ac139d8049955342df3ec51474b0e4eae6614d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5206382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af140d6bde3d4f894715c6827df324472a76acedd6f5a83931c484f942a0b59f`

```dockerfile
```

-	Layers:
	-	`sha256:b5723eb4fef9afc929b82264217caa0118c934d2f4b253a9daa579d77ba244a3`  
		Last Modified: Thu, 05 Nov 2026 19:59:27 GMT  
		Size: 5.2 MB (5197118 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:afba61cac8c14d5dcdec1ff54f2ae21f029800548055155971862397162f189a`  
		Last Modified: Thu, 05 Nov 2026 19:59:26 GMT  
		Size: 9.3 KB (9264 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:17-headless` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:131dcc13aadf0666c1a9e9015490a1a89c903a57b0d3dc053ed907931cde792d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.5 MB (135502988 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb0db36a44ace8c6db3683301d92ae09fdbfed09af1e892f7c3df055bd71aa00`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 05 Nov 2026 18:48:16 GMT
COPY /rootfs/ / # buildkit
# Thu, 05 Nov 2026 18:48:16 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 20:15:48 GMT
ARG version=17.0.21.0.11-1
# Thu, 05 Nov 2026 20:15:48 GMT
ARG resource_version=17.0.21.0.11
# Thu, 05 Nov 2026 20:15:48 GMT
ARG package_version=1
# Thu, 05 Nov 2026 20:15:48 GMT
# ARGS: version=17.0.21.0.11-1 resource_version=17.0.21.0.11 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 05 Nov 2026 20:15:48 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 20:15:48 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:c1eee8f81fa5e953bb6eab0ff6f612967f0ef8b1dc9fac3cb2319b1021f7a245`  
		Last Modified: Sat, 31 Oct 2026 02:35:03 GMT  
		Size: 53.5 MB (53456123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df9d580432ec337cc8c85e5703e4bf9001714547c1e1f3c03f3cadf117a92e0a`  
		Last Modified: Thu, 05 Nov 2026 20:16:06 GMT  
		Size: 82.0 MB (82046865 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:3f41e11f921ddc6fba786a5ff0fab8e52483573b9075066b68ae1f79d038b31a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5205274 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23cb4f5ad80db0fe77c68ce959c57e183a736cb7a2779be4440611e28a742022`

```dockerfile
```

-	Layers:
	-	`sha256:c4bebb6a1db51ffea93ea7a4eef600e859424f8858382c2e146906d945cd77ff`  
		Last Modified: Thu, 05 Nov 2026 20:16:04 GMT  
		Size: 5.2 MB (5195919 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ce904aba40971f71e5ee111505ac53598c0f180c8953ac58ecface6c159fbc7c`  
		Last Modified: Thu, 05 Nov 2026 20:16:04 GMT  
		Size: 9.4 KB (9355 bytes)  
		MIME: application/vnd.in-toto+json
