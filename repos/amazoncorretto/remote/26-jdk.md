## `amazoncorretto:26-jdk`

```console
$ docker pull amazoncorretto@sha256:39e2db5dbcda929c5acece700a031e6b4e01b2cf09b547e312dde20bc491b313
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:26-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:5d5ef515476777dd94a335aa879971ed87d933999ff2995b11e371f095f290b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.3 MB (248296568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f23ccb778049f3dfd7cd0cb54b0053e748ebd4edcbf3d7d02383010003e8e13`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Oct 2026 00:41:03 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:41:03 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 01:11:06 GMT
ARG version=26.0.2.11-1
# Fri, 23 Oct 2026 01:11:06 GMT
ARG package_version=1
# Fri, 23 Oct 2026 01:11:06 GMT
# ARGS: version=26.0.2.11-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-26-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-26-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-26-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-26-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-26-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 23 Oct 2026 01:11:06 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 01:11:06 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-26-amazon-corretto
```

-	Layers:
	-	`sha256:da3e7a9e0d7ce8bd2e34f464f7fc47c97dde7880b26078690ed76ef5809d8b69`  
		Last Modified: Thu, 22 Oct 2026 01:38:41 GMT  
		Size: 54.6 MB (54648920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e80630ed1e84b7a04c44fb3d456ec629b420c42016337ee70ab68736d49663c3`  
		Last Modified: Fri, 23 Oct 2026 01:11:31 GMT  
		Size: 193.6 MB (193647648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:26-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:bd761171d0487b0e25fbdf8c96aa0692c6015e190151d188be1748028485fe6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5350028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b484ed1babec44b7797f62a316febcef05d8531285c4e7bc61d2d275e4aaef3f`

```dockerfile
```

-	Layers:
	-	`sha256:214a358766dd76421511124e9e54ae6fe0cb2b8fc2da297dc4b1a855a54254dd`  
		Last Modified: Fri, 23 Oct 2026 01:11:27 GMT  
		Size: 5.3 MB (5339377 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:87077d780ee78ac47c61653dd8b599b187abd97667f6320e343eb216f2d16d55`  
		Last Modified: Fri, 23 Oct 2026 01:11:27 GMT  
		Size: 10.7 KB (10651 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:26-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:eb565a805665018277c4448cb7648664c52a209293a92d464e6ed4af19d00f99
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.0 MB (244992169 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8559eaacd68f809aa622e2422488e3a03d9aa3073dae8a41cb3907625ef8fd32`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Oct 2026 00:40:43 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:40:43 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 01:11:05 GMT
ARG version=26.0.2.11-1
# Fri, 23 Oct 2026 01:11:05 GMT
ARG package_version=1
# Fri, 23 Oct 2026 01:11:05 GMT
# ARGS: version=26.0.2.11-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-26-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-26-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-26-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-26-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-26-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 23 Oct 2026 01:11:05 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 01:11:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-26-amazon-corretto
```

-	Layers:
	-	`sha256:b9de6aa56dd75608aa129f8d7c4af23dae5b1bb2a5a2edb4e9acfd307a0af336`  
		Last Modified: Thu, 22 Oct 2026 02:52:33 GMT  
		Size: 53.5 MB (53529316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c14fd3ed84c347e6f631e5aee15b91ee88364aa15096490e7181b6de66d8fae`  
		Last Modified: Fri, 23 Oct 2026 01:11:31 GMT  
		Size: 191.5 MB (191462853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:26-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:f010b8b87c097bf471f51b92511a0e7dc5a2bca21f2b0f17ddaa9783f11d5792
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5349132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b60dbd8b042520366e4de9153022109bec2ae13a30bf4655396fac011c61e6a`

```dockerfile
```

-	Layers:
	-	`sha256:cf1fc4bc9e9e15dc26e0a2d3b4ef4a65b3487f883e25539343a626608c8ce2ad`  
		Last Modified: Fri, 23 Oct 2026 01:11:27 GMT  
		Size: 5.3 MB (5338353 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:310fd2a1dbd419edf55784104567b4baa55695ea7d243839ed758ce0cf95e89e`  
		Last Modified: Fri, 23 Oct 2026 01:11:26 GMT  
		Size: 10.8 KB (10779 bytes)  
		MIME: application/vnd.in-toto+json
