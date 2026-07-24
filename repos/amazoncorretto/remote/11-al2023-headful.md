## `amazoncorretto:11-al2023-headful`

```console
$ docker pull amazoncorretto@sha256:a23706be37e673f0a84f2a239138ad8c4cc00297b0ab828f072ed35fe0cca526
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:11-al2023-headful` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:8abb9f7f185b3a0bd974289753b9e228a77da6dbc255906d3553a990b07424fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.3 MB (131337792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6691089db9c18b32bbeeca08d3ef1b961fb1159f982f8b893c1843da18b503e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:23 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:23 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:11:24 GMT
ARG version=11.0.32.9-1
# Thu, 23 Jul 2026 23:11:24 GMT
# ARGS: version=11.0.32.9-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 23 Jul 2026 23:11:24 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:11:24 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:3b5eb82da667b3e3ec6bc9d0b202bfba5f45c665af1ff4c33b4d24e971967e96`  
		Last Modified: Fri, 10 Jul 2026 21:57:49 GMT  
		Size: 54.6 MB (54574264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0af706726b4575e5c72193e6142f2bf1da512a371895a8e84ecb57c67566b453`  
		Last Modified: Thu, 23 Jul 2026 23:11:41 GMT  
		Size: 76.8 MB (76763528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-al2023-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:fb208ecc96cf681560781c981418982bdbcdc776a57c5d988723037c7f5c8b3b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5244786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd2088cca5caaeabd27acf351bd68e4802a548364c4f0e1ea8baeae34b1a0910`

```dockerfile
```

-	Layers:
	-	`sha256:e89daca5a72602e53f41105a2c079caf696fc85e9d8be5c773b28dca5cd01c29`  
		Last Modified: Thu, 23 Jul 2026 23:11:39 GMT  
		Size: 5.2 MB (5235558 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:14f730982f7b34d6d424f3fcf0e10e832d08993dfd3d63519888f4d6e2a10063`  
		Last Modified: Thu, 23 Jul 2026 23:11:38 GMT  
		Size: 9.2 KB (9228 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:11-al2023-headful` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:bbbf263b2e9fd23f47e40093434f1b596ec72b21e230029804933d6125ce72f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.5 MB (129465124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e6635f90b4d6badfd6ef64c481ee2bfbf3116fb54bff6e3b02c342061ae0209`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:13 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:13 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:13:09 GMT
ARG version=11.0.32.9-1
# Thu, 23 Jul 2026 23:13:09 GMT
# ARGS: version=11.0.32.9-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 23 Jul 2026 23:13:09 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:13:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:6e12116aae4fd69e40f0f0c465aeb7f71b0d7db5d37e40fced028a576a31ca9e`  
		Last Modified: Sat, 11 Jul 2026 02:19:28 GMT  
		Size: 53.4 MB (53449232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cd121dc5d463de079ae63694326e99e0e4d5b0b4883d96b0819c71f3ff020ce`  
		Last Modified: Thu, 23 Jul 2026 23:13:27 GMT  
		Size: 76.0 MB (76015892 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-al2023-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:47f1bc26f9fcde0eb29524dba6aac1101e9c4921d4f7c671df4f9023f7f7c3d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5244511 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a24293391139718ec5279db22f4e7e9808c7fc2de1f242d2e8bafbfac9032290`

```dockerfile
```

-	Layers:
	-	`sha256:0383b9f0dcfdca3e2f410fd77b287e6b12c4cc96ae4c4720404e1930d096d128`  
		Last Modified: Thu, 23 Jul 2026 23:13:25 GMT  
		Size: 5.2 MB (5235191 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:93d4e3879f719f95b63aab2a8346bd689d4cca7068b29023842d0494f02a3ac2`  
		Last Modified: Thu, 23 Jul 2026 23:13:24 GMT  
		Size: 9.3 KB (9320 bytes)  
		MIME: application/vnd.in-toto+json
