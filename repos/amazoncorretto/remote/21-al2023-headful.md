## `amazoncorretto:21-al2023-headful`

```console
$ docker pull amazoncorretto@sha256:76f69166c8b89851b0939c1008c852078888e5e460ae9d7e193ab9d2cde36113
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:21-al2023-headful` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:73222ff0d3974804d22b53b0900ebd7c676f53218b335687f09151ee3914dec1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.7 MB (144665088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c213f4bfd3e7fe75ffbff90dc37eb5c44827a4ab984ee7fdd18700e8b1af019`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:23 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:23 GMT
CMD ["/bin/bash"]
# Sat, 18 Jul 2026 00:12:57 GMT
ARG version=21.0.11.10-1
# Sat, 18 Jul 2026 00:12:57 GMT
ARG package_version=1
# Sat, 18 Jul 2026 00:12:57 GMT
# ARGS: version=21.0.11.10-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Sat, 18 Jul 2026 00:12:57 GMT
ENV LANG=C.UTF-8
# Sat, 18 Jul 2026 00:12:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
```

-	Layers:
	-	`sha256:3b5eb82da667b3e3ec6bc9d0b202bfba5f45c665af1ff4c33b4d24e971967e96`  
		Last Modified: Fri, 10 Jul 2026 21:57:49 GMT  
		Size: 54.6 MB (54574264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:668482fae602e2b99082a98600d47c63672892cd782ca2aa370a7898530a9fa8`  
		Last Modified: Sat, 18 Jul 2026 00:13:16 GMT  
		Size: 90.1 MB (90090824 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-al2023-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:0b3627fceb91ea9a9a0214d3e915abaffabf188eab55cdecbed28138d0b885a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5232817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:315a0c693d333d67fe023ae59fab0420da4dac9dfc2f02c8baec26c7bdeb39f8`

```dockerfile
```

-	Layers:
	-	`sha256:13ab3c058d48fa9c63135c1b3176e99dff3291bce729531661434ba30351557d`  
		Last Modified: Sat, 18 Jul 2026 00:13:13 GMT  
		Size: 5.2 MB (5223764 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3fa67da5da6bd243f1cdaebf6fc1f3d9f43477b18637f92a19bab52c2616e6f0`  
		Last Modified: Sat, 18 Jul 2026 00:13:13 GMT  
		Size: 9.1 KB (9053 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:21-al2023-headful` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:8c12750746cd34b2d8fc7ce5989655ed2dd980311172c04d14e9ceeb41e231d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.7 MB (142677750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b67455ef3d7ccab701ffe909c1ee2c59971d437f378a7662b1e9566645f0af19`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:13 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:13 GMT
CMD ["/bin/bash"]
# Sat, 18 Jul 2026 00:12:52 GMT
ARG version=21.0.11.10-1
# Sat, 18 Jul 2026 00:12:52 GMT
ARG package_version=1
# Sat, 18 Jul 2026 00:12:52 GMT
# ARGS: version=21.0.11.10-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Sat, 18 Jul 2026 00:12:52 GMT
ENV LANG=C.UTF-8
# Sat, 18 Jul 2026 00:12:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
```

-	Layers:
	-	`sha256:6e12116aae4fd69e40f0f0c465aeb7f71b0d7db5d37e40fced028a576a31ca9e`  
		Last Modified: Sat, 11 Jul 2026 02:19:28 GMT  
		Size: 53.4 MB (53449232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd3590b18bab3d01cd8bb97d9c50b0799237009744610d46c1e9ee95c63941d3`  
		Last Modified: Sat, 18 Jul 2026 00:13:11 GMT  
		Size: 89.2 MB (89228518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-al2023-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:1e6384f9e4ed3d87198c8785eb1c891a184adb03482186691e36f511626a58b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5231691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c9b4bf3cda9d58ea5f0fa22698905bbd95dab8bd09b1f848c044b45efd40551`

```dockerfile
```

-	Layers:
	-	`sha256:c180defd3c571730ef903a4e67ac9c729990baa62956e53d7de7053bf9181b6f`  
		Last Modified: Sat, 18 Jul 2026 00:13:09 GMT  
		Size: 5.2 MB (5222558 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c1b9bfa1c7aee2bb6990642017043e35756db47d9310679e5df9f67e7d615ee8`  
		Last Modified: Sat, 18 Jul 2026 00:13:09 GMT  
		Size: 9.1 KB (9133 bytes)  
		MIME: application/vnd.in-toto+json
