## `amazoncorretto:17-headful`

```console
$ docker pull amazoncorretto@sha256:13e3d6397cd170e982a49d55ae1b40dd0d0154ac037de2c3b4e786b460f71e0d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-headful` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:606769d4baea0780d2af02500a735cfb6ae6ed31774280b1aae6f3036bf2cbf7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.0 MB (137990636 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97c9f88df6a5775fd2b014c0cf751d125b535dfc28d23384a3f71018ffb8ea79`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Oct 2026 00:41:03 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:41:03 GMT
CMD ["/bin/bash"]
# Fri, 30 Oct 2026 19:44:14 GMT
ARG version=17.0.21.0.11-1
# Fri, 30 Oct 2026 19:44:14 GMT
ARG resource_version=17.0.21.0.11
# Fri, 30 Oct 2026 19:44:14 GMT
ARG package_version=1
# Fri, 30 Oct 2026 19:44:14 GMT
# ARGS: version=17.0.21.0.11-1 resource_version=17.0.21.0.11 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 30 Oct 2026 19:44:14 GMT
ENV LANG=C.UTF-8
# Fri, 30 Oct 2026 19:44:14 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:da3e7a9e0d7ce8bd2e34f464f7fc47c97dde7880b26078690ed76ef5809d8b69`  
		Last Modified: Thu, 22 Oct 2026 01:38:41 GMT  
		Size: 54.6 MB (54648920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01f816c4fe55e65b4a75e92afcc11e9231f419863fb213e8f84086ca3314c9b7`  
		Last Modified: Fri, 30 Oct 2026 19:44:30 GMT  
		Size: 83.3 MB (83341716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:ca7e3a480be27e87aca86231d886f6a3f34206e5ae628c782c0994aa0d9fe1ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5231976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:442ed6fb2a0b0b85a04062ca5de99ec2fae962b79f357a2fd30f7a700980a8e9`

```dockerfile
```

-	Layers:
	-	`sha256:d16845ab612eddc22a60adc3a5589ef90dd3f97171792c9e3e70f2a3dc7b5aeb`  
		Last Modified: Fri, 30 Oct 2026 19:44:28 GMT  
		Size: 5.2 MB (5222543 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b8f256ee0ab5e91bc1fbaf23b1d8e388c48d018e675642f3e4081f6e61064d70`  
		Last Modified: Fri, 30 Oct 2026 19:44:27 GMT  
		Size: 9.4 KB (9433 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:17-headful` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:349bc2520183aad0e313946db7b67f928c83378a6d2405e14c314c1cb9de34dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.3 MB (136312860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24dab00f11f70aa373f48680620c1492dfc1f1e8c8a35666072c19d819bd6155`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Oct 2026 00:40:43 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:40:43 GMT
CMD ["/bin/bash"]
# Fri, 30 Oct 2026 19:44:21 GMT
ARG version=17.0.21.0.11-1
# Fri, 30 Oct 2026 19:44:21 GMT
ARG resource_version=17.0.21.0.11
# Fri, 30 Oct 2026 19:44:21 GMT
ARG package_version=1
# Fri, 30 Oct 2026 19:44:21 GMT
# ARGS: version=17.0.21.0.11-1 resource_version=17.0.21.0.11 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 30 Oct 2026 19:44:21 GMT
ENV LANG=C.UTF-8
# Fri, 30 Oct 2026 19:44:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:b9de6aa56dd75608aa129f8d7c4af23dae5b1bb2a5a2edb4e9acfd307a0af336`  
		Last Modified: Thu, 22 Oct 2026 02:52:33 GMT  
		Size: 53.5 MB (53529316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81f9acc594c3f7961894c586d30f2e09e4fc98a44be819bfea67f80048802600`  
		Last Modified: Fri, 30 Oct 2026 19:44:40 GMT  
		Size: 82.8 MB (82783544 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:db0f41e12a646253e74d552d6febf4dc801129c5fcebed349dcdff130b95af83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5230872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9977a5b682a6523c98f5bc3398035ffb0e1023324f2e72e40a8973c3e3c19040`

```dockerfile
```

-	Layers:
	-	`sha256:f80725758605b8aec3971c5c51c95fcaaa82182f28b6641a033a541388e78d18`  
		Last Modified: Fri, 30 Oct 2026 19:44:38 GMT  
		Size: 5.2 MB (5221347 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:37d5bc64778ce95092d92d9639d7ffae915027db9f7337350de0422afff87e73`  
		Last Modified: Fri, 30 Oct 2026 19:44:38 GMT  
		Size: 9.5 KB (9525 bytes)  
		MIME: application/vnd.in-toto+json
