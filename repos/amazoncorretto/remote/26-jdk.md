## `amazoncorretto:26-jdk`

```console
$ docker pull amazoncorretto@sha256:32016a1f597faecef57a9e6d8fb1d2d31b0776df423a58c8e9d382f6ddcf3758
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:26-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:6d586a737985d698c0b218fa15e4b9a5238c95f77dc74445dd6e384eb0ced4fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.2 MB (248206990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69745ba3749857bf04e6c4989c55fd96552d8f64283e23f31f82730d9b5df0cf`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:23 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:23 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:13:38 GMT
ARG version=26.0.2.10-1
# Thu, 23 Jul 2026 23:13:38 GMT
ARG package_version=1
# Thu, 23 Jul 2026 23:13:38 GMT
# ARGS: version=26.0.2.10-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-26-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-26-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-26-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-26-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-26-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 23 Jul 2026 23:13:38 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:13:38 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-26-amazon-corretto
```

-	Layers:
	-	`sha256:3b5eb82da667b3e3ec6bc9d0b202bfba5f45c665af1ff4c33b4d24e971967e96`  
		Last Modified: Fri, 10 Jul 2026 21:57:49 GMT  
		Size: 54.6 MB (54574264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b90945cce337bd671460d73dbf71c0421b1916eb2ba5c4c46290b6f2488bc876`  
		Last Modified: Thu, 23 Jul 2026 23:14:02 GMT  
		Size: 193.6 MB (193632726 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:26-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:17225413e1e94090f66923a3931b3859c476f52c474476be61a6dfc36266d781
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5349947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:843003f30502d66883a4ec58a16b6d55cda19f2343709736bbac3cf5f0ff4222`

```dockerfile
```

-	Layers:
	-	`sha256:3ce59174a6a2e532d3d50241326f0c8d6ac928bb5a1e168e6647357ff3d235eb`  
		Last Modified: Thu, 23 Jul 2026 23:13:58 GMT  
		Size: 5.3 MB (5339296 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c03c24f29eddb993fdfbbdf8f1546dea1f695bd7fa3a8b0a4e39cccb29361c5b`  
		Last Modified: Thu, 23 Jul 2026 23:13:58 GMT  
		Size: 10.7 KB (10651 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:26-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:1994434c2f6059f46cf6d5aff431a749da47c4a52047f1d46c22c8ba7f4b80dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.9 MB (244898087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:031a7f6c8c8adcb8c3781882e7533f38b091675ed9a48d3b635fbd91e7d1896a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:13 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:13 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:15:29 GMT
ARG version=26.0.2.10-1
# Thu, 23 Jul 2026 23:15:29 GMT
ARG package_version=1
# Thu, 23 Jul 2026 23:15:29 GMT
# ARGS: version=26.0.2.10-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-26-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-26-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-26-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-26-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-26-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 23 Jul 2026 23:15:29 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:15:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-26-amazon-corretto
```

-	Layers:
	-	`sha256:6e12116aae4fd69e40f0f0c465aeb7f71b0d7db5d37e40fced028a576a31ca9e`  
		Last Modified: Sat, 11 Jul 2026 02:19:28 GMT  
		Size: 53.4 MB (53449232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0d0d160aaf684951ecf6872e94f66a518a5d5c37702bdcecbfe4ef7fb16efde`  
		Last Modified: Thu, 23 Jul 2026 23:15:55 GMT  
		Size: 191.4 MB (191448855 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:26-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:dc4d330fa7fb4d3ae34eac91ba75276ecc98d3342657925a36c32e0304525afc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5349051 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c88fd3d6b758a708d6ad54ee6ecdf2c2ad457f4d65ad9a3f6541e084f32971e9`

```dockerfile
```

-	Layers:
	-	`sha256:0970ebe54d76a8627e058d0298d70c4f8a6e3ea8903aef962414aeb79b08c60b`  
		Last Modified: Thu, 23 Jul 2026 23:15:51 GMT  
		Size: 5.3 MB (5338272 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e46595304e1b29b06155d1b3521453accdab13eec684b914b2ad7250ba471c39`  
		Last Modified: Thu, 23 Jul 2026 23:15:50 GMT  
		Size: 10.8 KB (10779 bytes)  
		MIME: application/vnd.in-toto+json
