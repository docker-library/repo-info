## `amazoncorretto:8-jdk`

```console
$ docker pull amazoncorretto@sha256:a3bd5ff3b68d904c6b9fec17abf476470d8997b08aacf50bdf5c3b998d95d663
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:2e2247b3fd8f52a4f80b836a3b4007be478cb5fe86161669d5cff162af5d39fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.7 MB (172720410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3eccb4f9197fcf5510a6c2beebdea8061002b7bfbd9cb16162585c1881fe073d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Oct 2026 00:41:03 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:41:03 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 01:09:12 GMT
ARG version=1.8.0_504.b05-1
# Fri, 23 Oct 2026 01:09:12 GMT
# ARGS: version=1.8.0_504.b05-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 23 Oct 2026 01:09:12 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 01:09:12 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
```

-	Layers:
	-	`sha256:da3e7a9e0d7ce8bd2e34f464f7fc47c97dde7880b26078690ed76ef5809d8b69`  
		Last Modified: Thu, 22 Oct 2026 01:38:41 GMT  
		Size: 54.6 MB (54648920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45275d094db56efe377be53d0900de193deb6be1cfb9954a0f4ecf75eebd5bef`  
		Last Modified: Fri, 23 Oct 2026 01:09:29 GMT  
		Size: 118.1 MB (118071490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:29b7ce424a36ebbbb31f2dd0bd95c5c95bccf24678c83dccac352429e942c969
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5717119 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f323a91c59002d664c449f217a05f0a3cc93fd1c092a8c9b144d96b8aaa731e6`

```dockerfile
```

-	Layers:
	-	`sha256:52931dc5c92299ef2e43d99edd48ac6f8a1ce75b61a94fa444f7b26edc0eaeb5`  
		Last Modified: Fri, 23 Oct 2026 01:09:27 GMT  
		Size: 5.7 MB (5706218 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:23288cc5cbfa4343d7d5f73d9f31e4a0dc28bce9ec5a773f85b7d12564a9dd1b`  
		Last Modified: Fri, 23 Oct 2026 01:09:27 GMT  
		Size: 10.9 KB (10901 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:fb033d6b436a91f6142e9cf3b641a7f2742ed9e7a1d661833342408141016bc9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.5 MB (171492668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdbf017110d07e9f4d2a63ad5f2b68b1eec475c91158941bacd3e4eeb9a84ae7`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Oct 2026 00:40:43 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:40:43 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 01:09:05 GMT
ARG version=1.8.0_504.b05-1
# Fri, 23 Oct 2026 01:09:05 GMT
# ARGS: version=1.8.0_504.b05-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 23 Oct 2026 01:09:05 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 01:09:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
```

-	Layers:
	-	`sha256:b9de6aa56dd75608aa129f8d7c4af23dae5b1bb2a5a2edb4e9acfd307a0af336`  
		Last Modified: Thu, 22 Oct 2026 02:52:33 GMT  
		Size: 53.5 MB (53529316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e31e577a47f6b0405a087888eadca26b60870b71c2923deb64163a04e9980d44`  
		Last Modified: Fri, 23 Oct 2026 01:09:24 GMT  
		Size: 118.0 MB (117963352 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:0f0aea5392f4954fb7ac080e83f7806b15284e9db61c2c43dcf7b9fcd4e9e7b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5717561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea2eb1796dd9f92ba24164a5ac7a6393ceb0dbdb0acc39eab921ef17b61b0a76`

```dockerfile
```

-	Layers:
	-	`sha256:777cc2587d76d72e0f179b2b01957f1607078dd02f1af66a2ad7ab9ad286eb5d`  
		Last Modified: Fri, 23 Oct 2026 01:09:22 GMT  
		Size: 5.7 MB (5706520 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9da11442727f5bed847f5a30b0e208e364c3d74e787e4d7848d033f7d72b61b6`  
		Last Modified: Fri, 23 Oct 2026 01:09:21 GMT  
		Size: 11.0 KB (11041 bytes)  
		MIME: application/vnd.in-toto+json
