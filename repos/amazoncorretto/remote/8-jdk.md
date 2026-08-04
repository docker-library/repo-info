## `amazoncorretto:8-jdk`

```console
$ docker pull amazoncorretto@sha256:8ba4aecd01819f1ccbbc57978b3dd272d643d64a7f0d2b695dc94d4089a001ac
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:be4f5ab228c67d455772fa2d45984f165bf666d0ca24ef5f69604ea3c1c6ec45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.6 MB (172647855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:792a73e0bbd191b9a9651aec1da9d63bf078f43e4db768d51b54f9bda4fc074d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 04 Aug 2026 00:27:38 GMT
COPY /rootfs/ / # buildkit
# Tue, 04 Aug 2026 00:27:38 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 00:56:13 GMT
ARG version=1.8.0_502.b07-1
# Tue, 04 Aug 2026 00:56:13 GMT
# ARGS: version=1.8.0_502.b07-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 04 Aug 2026 00:56:13 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 00:56:13 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
```

-	Layers:
	-	`sha256:1c635d63e15b914a52c850733b73b200164c1b4f22ce422b48b4130f93dee906`  
		Last Modified: Tue, 28 Jul 2026 03:02:31 GMT  
		Size: 54.6 MB (54572680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a76c0fc2124fb5e59ef525ae180f87c1f8c10dacebd5dba3c46c6f391f18512d`  
		Last Modified: Tue, 04 Aug 2026 00:56:32 GMT  
		Size: 118.1 MB (118075175 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:11bc349c1fdf305d5cce6e794abc18b5674bfe335aad245749ea8671d2f3a43b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5717118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcf0c923859904c7ea1d9b71d71478c7b1cb37aa8b187c5b14c747cc50e8436b`

```dockerfile
```

-	Layers:
	-	`sha256:9e737972dac7bb01778c42656322b99f6760041e0d0a2205798f4f011356589b`  
		Last Modified: Tue, 04 Aug 2026 00:56:30 GMT  
		Size: 5.7 MB (5706217 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:856e520cb9638a75b0e6ae02d6d13f0cd93f55a506a041546de58483e5531141`  
		Last Modified: Tue, 04 Aug 2026 00:56:29 GMT  
		Size: 10.9 KB (10901 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:4f37e8bc6ef3468887a8735d50052a1f79f2b1ecfb487c372de85d684ee1d796
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.4 MB (171414070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8e9f7b672e7cfa101c1ce6a544c42a963b9e1a9c37a83e5ea8788c019c4987f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 04 Aug 2026 00:27:37 GMT
COPY /rootfs/ / # buildkit
# Tue, 04 Aug 2026 00:27:37 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 00:55:14 GMT
ARG version=1.8.0_502.b07-1
# Tue, 04 Aug 2026 00:55:14 GMT
# ARGS: version=1.8.0_502.b07-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2023.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 04 Aug 2026 00:55:14 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 00:55:14 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
```

-	Layers:
	-	`sha256:0d194348effd1a9f66c459a1b81ed9823b1301b8d182e914b8ddc71c54c528e5`  
		Last Modified: Tue, 28 Jul 2026 08:44:17 GMT  
		Size: 53.4 MB (53448657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b57bccdd8671cc4040bf0dd031f4cdb71740e5027a5e624dbf8449d4a5dfa006`  
		Last Modified: Tue, 04 Aug 2026 00:55:33 GMT  
		Size: 118.0 MB (117965413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:a5e0fb045cb71f0367652849d1e27e9049846ea05b0d23ffbb9f41f658249f7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5717559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ce565839220cb8ad8de8834342997e2c45c7b55fc783dd99be96121feab2345`

```dockerfile
```

-	Layers:
	-	`sha256:acca209b0a484f133c6fa551a4fa9225f5d3cc38fedba4a8be7c8edd5092ac6c`  
		Last Modified: Tue, 04 Aug 2026 00:55:30 GMT  
		Size: 5.7 MB (5706519 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0d6484612bdd32f858058b7f1d95836b01b2e6ab183086d757ca9016a4b7705a`  
		Last Modified: Tue, 04 Aug 2026 00:55:30 GMT  
		Size: 11.0 KB (11040 bytes)  
		MIME: application/vnd.in-toto+json
