## `amazoncorretto:11-al2023-headful`

```console
$ docker pull amazoncorretto@sha256:a60940930e77eadf81b7863b7e62c0c67bea5f5b3361149ea2f36fa03cee5ec8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:11-al2023-headful` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:d4133934bf30e9260a24433fbc144c589f657c5ebb522bf4b9ba55fa020fe60a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.3 MB (131335678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8c21bd8f2fb14729f164b4fc4d5e8407171e44d7572e2597d6c19fd65cefdad`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:23 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:23 GMT
CMD ["/bin/bash"]
# Sat, 18 Jul 2026 00:12:08 GMT
ARG version=11.0.31.11-1
# Sat, 18 Jul 2026 00:12:08 GMT
# ARGS: version=11.0.31.11-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Sat, 18 Jul 2026 00:12:08 GMT
ENV LANG=C.UTF-8
# Sat, 18 Jul 2026 00:12:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:3b5eb82da667b3e3ec6bc9d0b202bfba5f45c665af1ff4c33b4d24e971967e96`  
		Last Modified: Fri, 10 Jul 2026 21:57:49 GMT  
		Size: 54.6 MB (54574264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84ce5ee67a15bbb25dc4cdd8e897cd4f9fb1791dd86451e525c957a6ed14dee2`  
		Last Modified: Sat, 18 Jul 2026 00:12:26 GMT  
		Size: 76.8 MB (76761414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-al2023-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:7264e2fe51409555d9b52e3b9360607df830d65007a1714df1dc6092b37e0f6e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5244149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f879ddd23aa2c412761d0c411d88b549b02d9448b2988f321440db37294effc`

```dockerfile
```

-	Layers:
	-	`sha256:d678c240cb3367532fd4f1b0c59dbc878861afb18642848d61103dd83f85fc00`  
		Last Modified: Sat, 18 Jul 2026 00:12:24 GMT  
		Size: 5.2 MB (5235242 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4ebcfde6c5fbcf1f3d70b1647db74457cf66a83bf48721766ecc9ddff94f0336`  
		Last Modified: Sat, 18 Jul 2026 00:12:24 GMT  
		Size: 8.9 KB (8907 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:11-al2023-headful` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:70f92b91145cb44739de3dac858e0abd8785531cfb62c4e5285fb2f93101362f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.5 MB (129461169 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:264af1bccf8fa4a260d4d29079f1f9676b0fe08b0115fb8df89bfb3a02c26261`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:13 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:13 GMT
CMD ["/bin/bash"]
# Sat, 18 Jul 2026 00:12:01 GMT
ARG version=11.0.31.11-1
# Sat, 18 Jul 2026 00:12:01 GMT
# ARGS: version=11.0.31.11-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Sat, 18 Jul 2026 00:12:01 GMT
ENV LANG=C.UTF-8
# Sat, 18 Jul 2026 00:12:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:6e12116aae4fd69e40f0f0c465aeb7f71b0d7db5d37e40fced028a576a31ca9e`  
		Last Modified: Sat, 11 Jul 2026 02:19:28 GMT  
		Size: 53.4 MB (53449232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b57fc04232581e60a3eb1ff8c6261ae36f4188dbd8927fa2f2675a7a66780da5`  
		Last Modified: Sat, 18 Jul 2026 00:12:19 GMT  
		Size: 76.0 MB (76011937 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-al2023-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:0199ed8d490babae397188d7fbcdd6bffe1b757402893f27c3a1804468bdeda3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5243849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6dedd279cb121dfe21880a23b660fae612f89918657f5f3cbd22ca806e0d718a`

```dockerfile
```

-	Layers:
	-	`sha256:708168c58cee3af3ffb501a6cbb42acb2fcb62087b56aa1ecb68fd2b281fb7e2`  
		Last Modified: Sat, 18 Jul 2026 00:12:17 GMT  
		Size: 5.2 MB (5234863 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fa26ff0931b75ec8109ba0f1e5273216d180da42e16b95e3e81ace2e7f30b2b2`  
		Last Modified: Sat, 18 Jul 2026 00:12:17 GMT  
		Size: 9.0 KB (8986 bytes)  
		MIME: application/vnd.in-toto+json
