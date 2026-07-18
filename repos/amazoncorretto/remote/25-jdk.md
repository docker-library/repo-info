## `amazoncorretto:25-jdk`

```console
$ docker pull amazoncorretto@sha256:ebd0b9d1aac0483d5ab904abd7564d6f85c393745dcbb818dafdcc4474feaa1c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:25-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:2f6c4d7393f0ca745793d71310bd285461ecb32c514db2a0448aae2c389bed66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.0 MB (243986518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f7ee48a00746b6d1c803397d453b1ed2eb935881f198723bc64258f35f76564`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:23 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:23 GMT
CMD ["/bin/bash"]
# Sat, 18 Jul 2026 00:13:05 GMT
ARG version=25.0.3.9-1
# Sat, 18 Jul 2026 00:13:05 GMT
ARG package_version=1
# Sat, 18 Jul 2026 00:13:05 GMT
# ARGS: version=25.0.3.9-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Sat, 18 Jul 2026 00:13:05 GMT
ENV LANG=C.UTF-8
# Sat, 18 Jul 2026 00:13:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
```

-	Layers:
	-	`sha256:3b5eb82da667b3e3ec6bc9d0b202bfba5f45c665af1ff4c33b4d24e971967e96`  
		Last Modified: Fri, 10 Jul 2026 21:57:49 GMT  
		Size: 54.6 MB (54574264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51f76def6f485283834e22704f39704c66891336677da1ab34ba7fba73a8daa7`  
		Last Modified: Sat, 18 Jul 2026 00:13:29 GMT  
		Size: 189.4 MB (189412254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:4eae6c03b6127336a584fb273a7a534769435d4c52fad6250880ff56ed044660
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5354026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c642a02284f786cc61bab8ea84c524599ebcd207a38e73eb07423bbb3730ede`

```dockerfile
```

-	Layers:
	-	`sha256:b23a13233a3eed48e74b0536796b12a502e6cc3551648571285c19988cefeeb9`  
		Last Modified: Sat, 18 Jul 2026 00:13:25 GMT  
		Size: 5.3 MB (5343377 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0793225c421fd42f4289bfa2245e0c120fe98a15990d0cad10cc43b8dca767f9`  
		Last Modified: Sat, 18 Jul 2026 00:13:25 GMT  
		Size: 10.6 KB (10649 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:25-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:4810e16ed81069fbbcc40dac5fb43ecf1471d362a0ae657f354d1cff70b01343
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.8 MB (240775696 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80fb8e500798fe6abe28583d7ee156aec9ef0334fd2757221cef2696c53a0266`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:13 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:13 GMT
CMD ["/bin/bash"]
# Sat, 18 Jul 2026 00:13:00 GMT
ARG version=25.0.3.9-1
# Sat, 18 Jul 2026 00:13:00 GMT
ARG package_version=1
# Sat, 18 Jul 2026 00:13:00 GMT
# ARGS: version=25.0.3.9-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-25-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Sat, 18 Jul 2026 00:13:00 GMT
ENV LANG=C.UTF-8
# Sat, 18 Jul 2026 00:13:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
```

-	Layers:
	-	`sha256:6e12116aae4fd69e40f0f0c465aeb7f71b0d7db5d37e40fced028a576a31ca9e`  
		Last Modified: Sat, 11 Jul 2026 02:19:28 GMT  
		Size: 53.4 MB (53449232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe9becf5794b858448d7ba68186dd01bc99512a25b9710bf28ee703889ab5d05`  
		Last Modified: Sat, 18 Jul 2026 00:13:25 GMT  
		Size: 187.3 MB (187326464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:d5e709943c9ad12c7f17c11a6c13a1beed28152e7d3dc76b2be7b730cf9ee53c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5353136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb45d4691fe02e11682b949506e6a747ed738eeb1ed4faacfecf522ef826a0d7`

```dockerfile
```

-	Layers:
	-	`sha256:a140028ff817722d46efa9b719f26e26dbfa231a7f59d7731640aff53aed1ce4`  
		Last Modified: Sat, 18 Jul 2026 00:13:21 GMT  
		Size: 5.3 MB (5342358 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bac1268025307e4e3cd620bf958d5ccf9d8327101967b39e5d78d95759ef1e5f`  
		Last Modified: Sat, 18 Jul 2026 00:13:21 GMT  
		Size: 10.8 KB (10778 bytes)  
		MIME: application/vnd.in-toto+json
