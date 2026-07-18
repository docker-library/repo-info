## `amazoncorretto:26-headless`

```console
$ docker pull amazoncorretto@sha256:3bc31df9c6bf4fadda659784c6c3cee683b4f6c016f6177c58ce0dcb143bd7e6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:26-headless` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:b11ec795610b7a5f2814b368262f036537e374a6cbac191e3f5c048b4adcb135
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.4 MB (160393744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60ab48b8a08f3d822de1f1c38ba0299d8447126a693eb18beb8e80784d54e7a1`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:23 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:23 GMT
CMD ["/bin/bash"]
# Sat, 18 Jul 2026 00:13:32 GMT
ARG version=26.0.1.8-1
# Sat, 18 Jul 2026 00:13:32 GMT
ARG package_version=1
# Sat, 18 Jul 2026 00:13:32 GMT
# ARGS: version=26.0.1.8-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-26-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-26-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Sat, 18 Jul 2026 00:13:32 GMT
ENV LANG=C.UTF-8
# Sat, 18 Jul 2026 00:13:32 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-26-amazon-corretto
```

-	Layers:
	-	`sha256:3b5eb82da667b3e3ec6bc9d0b202bfba5f45c665af1ff4c33b4d24e971967e96`  
		Last Modified: Fri, 10 Jul 2026 21:57:49 GMT  
		Size: 54.6 MB (54574264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bd3e9b682c477202bf5b89a72ed067ba12fd397addc1d960f078aa0425aff2f`  
		Last Modified: Sat, 18 Jul 2026 00:13:52 GMT  
		Size: 105.8 MB (105819480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:26-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:eb8e2cfcc14b20365e498c535e2565461567b7e659487f4db8ad3fabc8e0171d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5216151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9feca1f632720367d27d9b72ed0275ec35549ea7bbe92398f21e95979db2c9ba`

```dockerfile
```

-	Layers:
	-	`sha256:ffd5706320244914ce1ca6a5fb42260c2f956f2d8d527b099b48148f98d1828e`  
		Last Modified: Sat, 18 Jul 2026 00:13:49 GMT  
		Size: 5.2 MB (5206952 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:361e1d51533cd56f50c0e37e17e3d0e636438c92c7b08d7850694ea8bba8817c`  
		Last Modified: Sat, 18 Jul 2026 00:13:49 GMT  
		Size: 9.2 KB (9199 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:26-headless` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:60caf8e85a29d956a8371c5d6f51db3179cd685e8fc1a21c33c67902d9444d5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.2 MB (158154911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a281655b965b8167ddecb9e4877b10d0299403569437e51de5cc3acb2898279`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:13 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:13 GMT
CMD ["/bin/bash"]
# Sat, 18 Jul 2026 00:13:02 GMT
ARG version=26.0.1.8-1
# Sat, 18 Jul 2026 00:13:02 GMT
ARG package_version=1
# Sat, 18 Jul 2026 00:13:02 GMT
# ARGS: version=26.0.1.8-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-26-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-26-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Sat, 18 Jul 2026 00:13:02 GMT
ENV LANG=C.UTF-8
# Sat, 18 Jul 2026 00:13:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-26-amazon-corretto
```

-	Layers:
	-	`sha256:6e12116aae4fd69e40f0f0c465aeb7f71b0d7db5d37e40fced028a576a31ca9e`  
		Last Modified: Sat, 11 Jul 2026 02:19:28 GMT  
		Size: 53.4 MB (53449232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:311ab6d927393af2bf7b27f36fed941f56a0165e733b1a5b5cda8fce9c9019c9`  
		Last Modified: Sat, 18 Jul 2026 00:13:23 GMT  
		Size: 104.7 MB (104705679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:26-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:03e08006ffc9d68984856dcdc9d9178dec835e2fc7bb056c5247594cbc4194be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5215053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41496c68cff08744c43db7ab3b5c856beaf7ec7b7f55579ffae92837ddbc3d57`

```dockerfile
```

-	Layers:
	-	`sha256:ddf4fe9e62f6b1c1a1667dd5d2acc0671191da553fa718486640643e82796a94`  
		Last Modified: Sat, 18 Jul 2026 00:13:20 GMT  
		Size: 5.2 MB (5205762 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:87d4821f1b19d71fae7dd3b63adaaf90c3902a7a13689d5d1bd1248e225086a4`  
		Last Modified: Sat, 18 Jul 2026 00:13:20 GMT  
		Size: 9.3 KB (9291 bytes)  
		MIME: application/vnd.in-toto+json
