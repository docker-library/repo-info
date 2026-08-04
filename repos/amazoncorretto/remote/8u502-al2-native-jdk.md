## `amazoncorretto:8u502-al2-native-jdk`

```console
$ docker pull amazoncorretto@sha256:6f65a50f47e687db65c1822291aeee6ce0e1dba59fd97bf2192f7f0325a665f1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8u502-al2-native-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:68b0fc4cfb1598d202c5d6997aacee75935ec14b8a58acc11cea7c163fa93356
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.1 MB (138118735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fa1c1eb9d84c4ad53293f0a3756a68f04b68cfe28d50357732535a4b6d33bf1`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 04 Aug 2026 00:28:02 GMT
COPY /rootfs/ / # buildkit
# Tue, 04 Aug 2026 00:28:02 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 00:57:18 GMT
ARG version=1.8.0_502.b07-1
# Tue, 04 Aug 2026 00:57:18 GMT
# ARGS: version=1.8.0_502.b07-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -v log4j-cve | tr -s ' ' |cut -d ' ' -f 3 );     done     && yum install -y fontconfig     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH} -name "*src.zip" -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Tue, 04 Aug 2026 00:57:18 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 00:57:18 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
```

-	Layers:
	-	`sha256:88d83595c5bd7b66b54c692ee8c03a4ab3e63d8b091b610b1105ae7142c17890`  
		Last Modified: Tue, 28 Jul 2026 11:47:09 GMT  
		Size: 62.9 MB (62949834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d14c9dd588efb66d13e3575b50cc2c9e3a3567cd89eae317fc4641463e9e8788`  
		Last Modified: Tue, 04 Aug 2026 00:57:34 GMT  
		Size: 75.2 MB (75168901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8u502-al2-native-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:bfb92e678d8e49d6970525c189281c229324b647e92cf9dc4318aa804bb892ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6333242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b652381f85412fa0189010590edd9ddbbc91ff03398c3d7f90811738769b2e7`

```dockerfile
```

-	Layers:
	-	`sha256:b34730c8a970584a84196ef3c57716dd792caa785fca724fb50f1f99482f4291`  
		Last Modified: Tue, 04 Aug 2026 00:57:32 GMT  
		Size: 6.3 MB (6323405 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:44908dee53d3a343df59f74625e75fdb5f56dff060131dd5beb8db7c4e5aef00`  
		Last Modified: Tue, 04 Aug 2026 00:57:32 GMT  
		Size: 9.8 KB (9837 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8u502-al2-native-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:509b7cb43679b0940f96a964aa706824a30ec1df0586038a75054352fc9d1724
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.8 MB (132778452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f1dd1c2621bacb06ffa252593965bae68756c5421d2546909035812989bd9f3`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 04 Aug 2026 00:28:03 GMT
COPY /rootfs/ / # buildkit
# Tue, 04 Aug 2026 00:28:03 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 00:56:58 GMT
ARG version=1.8.0_502.b07-1
# Tue, 04 Aug 2026 00:56:58 GMT
# ARGS: version=1.8.0_502.b07-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -v log4j-cve | tr -s ' ' |cut -d ' ' -f 3 );     done     && yum install -y fontconfig     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH} -name "*src.zip" -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Tue, 04 Aug 2026 00:56:58 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 00:56:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
```

-	Layers:
	-	`sha256:4041c7a5cc201d5453f6440f7ff23df8d11d9ce4770a3ceb9e92cef0fe759860`  
		Last Modified: Tue, 04 Aug 2026 00:28:19 GMT  
		Size: 64.8 MB (64800595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e985ca0750cfad623901d79d749708743c3c4aef24436d5ad635555d758fda3c`  
		Last Modified: Tue, 04 Aug 2026 00:57:15 GMT  
		Size: 68.0 MB (67977857 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8u502-al2-native-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:d6833c54edf15943dc5dfb86ad33a963711af04593de606b5ff8617c0d3da0a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6135824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d72447b15240ac2d5803b0603e6fc362ed0db8fc940653b2cce034089d29f229`

```dockerfile
```

-	Layers:
	-	`sha256:c8fbf478fbcc36fed78f42dcb2d9bffdc711bbf13a8a7c53d2c7117fd9e55a1f`  
		Last Modified: Tue, 04 Aug 2026 00:57:13 GMT  
		Size: 6.1 MB (6125907 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0915c497427414eeefcc3af1316f31bc497d9c9f5483d564be4d7529a1a00241`  
		Last Modified: Tue, 04 Aug 2026 00:57:12 GMT  
		Size: 9.9 KB (9917 bytes)  
		MIME: application/vnd.in-toto+json
