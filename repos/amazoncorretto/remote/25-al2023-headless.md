## `amazoncorretto:25-al2023-headless`

```console
$ docker pull amazoncorretto@sha256:00d83b45884cd190bad365fb4d40f8118620f5fde5175953b5e686d0406f48bb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:25-al2023-headless` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:58b729ea3702c36867edaefd6505fe2c67003f1cbc8c2babfcd8d9105c52801d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.3 MB (158292685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bcd3b5a05f3485e821be7e6438bbb208b2398b3b70949fd5d982ae12ee03799`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:23 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:23 GMT
CMD ["/bin/bash"]
# Sat, 18 Jul 2026 00:13:04 GMT
ARG version=25.0.3.9-1
# Sat, 18 Jul 2026 00:13:04 GMT
ARG package_version=1
# Sat, 18 Jul 2026 00:13:04 GMT
# ARGS: version=25.0.3.9-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Sat, 18 Jul 2026 00:13:04 GMT
ENV LANG=C.UTF-8
# Sat, 18 Jul 2026 00:13:04 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
```

-	Layers:
	-	`sha256:3b5eb82da667b3e3ec6bc9d0b202bfba5f45c665af1ff4c33b4d24e971967e96`  
		Last Modified: Fri, 10 Jul 2026 21:57:49 GMT  
		Size: 54.6 MB (54574264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33d2d6ff05a4eaaa7b6822467e67d45388a92ae12bde8f2969e2918d3e906624`  
		Last Modified: Sat, 18 Jul 2026 00:13:25 GMT  
		Size: 103.7 MB (103718421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-al2023-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:c723ecd4ebf8f6b16720052931abd6e167e5758447052bab53290105b417b071
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5217793 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed3c2eccdc9717758a202e464ab0e17c16b6a89df5f49a83b483e1910fd74d00`

```dockerfile
```

-	Layers:
	-	`sha256:b1dcf393501a851188fd4d1d10317d5d67083e1d927ae5ce700e6d5143942947`  
		Last Modified: Sat, 18 Jul 2026 00:13:22 GMT  
		Size: 5.2 MB (5208594 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6e168e5521550fd82a1039e1572877e95282bdfc7afc04a26267eb93b22c13e3`  
		Last Modified: Sat, 18 Jul 2026 00:13:22 GMT  
		Size: 9.2 KB (9199 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:25-al2023-headless` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:fccccc21a6b5b22d0144cc6977b40187fe72aae03302beb4ae18dc74e2224c0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.1 MB (156097624 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bea187fe0a8260f20e30a4720f0d568e21fe9ef6d406e2316aa39d9fd202c83`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:13 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:13 GMT
CMD ["/bin/bash"]
# Sat, 18 Jul 2026 00:12:55 GMT
ARG version=25.0.3.9-1
# Sat, 18 Jul 2026 00:12:55 GMT
ARG package_version=1
# Sat, 18 Jul 2026 00:12:55 GMT
# ARGS: version=25.0.3.9-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Sat, 18 Jul 2026 00:12:55 GMT
ENV LANG=C.UTF-8
# Sat, 18 Jul 2026 00:12:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
```

-	Layers:
	-	`sha256:6e12116aae4fd69e40f0f0c465aeb7f71b0d7db5d37e40fced028a576a31ca9e`  
		Last Modified: Sat, 11 Jul 2026 02:19:28 GMT  
		Size: 53.4 MB (53449232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c8eaf56f6739a61ff45ca81ded339ecd28b73f497ba410eeb626a3b381d083f`  
		Last Modified: Sat, 18 Jul 2026 00:13:16 GMT  
		Size: 102.6 MB (102648392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-al2023-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:05ef949fcf585d36262efe386717211eb4686e32830b1a36833df3f733af89cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5216697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e464d4101b49614c4954f15b47bc0d2f6ff07a5a6bfaf8a15e0d99ef4ebde6fa`

```dockerfile
```

-	Layers:
	-	`sha256:ee27622228a914d9a62faa9789a3c1e687fd5c5f14d120d60f1cfc710a602134`  
		Last Modified: Sat, 18 Jul 2026 00:13:14 GMT  
		Size: 5.2 MB (5207406 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:867dd87724bb1a1bbc797f8eb89c144e096bb34e27f5fa8334ad5d3314c70478`  
		Last Modified: Sat, 18 Jul 2026 00:13:13 GMT  
		Size: 9.3 KB (9291 bytes)  
		MIME: application/vnd.in-toto+json
