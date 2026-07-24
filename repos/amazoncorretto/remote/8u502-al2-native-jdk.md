## `amazoncorretto:8u502-al2-native-jdk`

```console
$ docker pull amazoncorretto@sha256:1a879c8932f86daf355e2586bb3250257766fe0bb9e6dbd1c6434ab70329ba2a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8u502-al2-native-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:b752bf7b5f0dabe7376d0de380b7cd347ce18d449db34f4cd8207e90ff8eee08
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.1 MB (138123053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43bdcbd5333c01a6fa6e6d8c30b137bd740dc17ca455ab8de9e742d98f23335a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:47 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:47 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:10:52 GMT
ARG version=1.8.0_502.b07-1
# Thu, 23 Jul 2026 23:10:52 GMT
# ARGS: version=1.8.0_502.b07-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -v log4j-cve | tr -s ' ' |cut -d ' ' -f 3 );     done     && yum install -y fontconfig     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH} -name "*src.zip" -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Thu, 23 Jul 2026 23:10:52 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:10:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
```

-	Layers:
	-	`sha256:06aa8a8412ddcd11af3d73b72c1ed58ba902c9428472a38c780460385a530107`  
		Last Modified: Sat, 11 Jul 2026 02:13:53 GMT  
		Size: 63.0 MB (62957295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7766d62acce5eeeae740ca26f07d087c36a4eddf2563a51b7aafdd46e138f81`  
		Last Modified: Thu, 23 Jul 2026 23:11:09 GMT  
		Size: 75.2 MB (75165758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8u502-al2-native-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:ee82eefb374bb26e9cde17c252c2ee3e6a47bf1cacb8a9f42620b6b1a3a699e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6333238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:feaaca64938049e83df53574f7afe594f6b8e055a45e644cc0292a193130b776`

```dockerfile
```

-	Layers:
	-	`sha256:9337286918b72e0cd85fa88ce9291a9541ff5d1b6ec70f63e8932e30ac100617`  
		Last Modified: Thu, 23 Jul 2026 23:11:07 GMT  
		Size: 6.3 MB (6323401 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f445310e82f2b8587e31b1e3012876fa1641d5bba21840cb6a697646bd860925`  
		Last Modified: Thu, 23 Jul 2026 23:11:07 GMT  
		Size: 9.8 KB (9837 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8u502-al2-native-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:c73baf787400b8183b0a9906c428c3195490aaf5a032738868893ceea0fae66d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.8 MB (132774141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db77542520c8dd9dc8a57ee5750b9572ef4194efa9a13b2880d4ae1431ad22de`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:40 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:40 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:12:29 GMT
ARG version=1.8.0_502.b07-1
# Thu, 23 Jul 2026 23:12:29 GMT
# ARGS: version=1.8.0_502.b07-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -v log4j-cve | tr -s ' ' |cut -d ' ' -f 3 );     done     && yum install -y fontconfig     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH} -name "*src.zip" -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Thu, 23 Jul 2026 23:12:29 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:12:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
```

-	Layers:
	-	`sha256:7da2ddf99845df800b9ce1ec0c9889076ad3ba27fd4e61b3ef728e424f1672f1`  
		Last Modified: Mon, 13 Jul 2026 18:19:45 GMT  
		Size: 64.8 MB (64790249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef586600b8fbb5dd7ac624c48d7dd227139bd3f1ac8e2a40dd0fe3c6440dbd49`  
		Last Modified: Thu, 23 Jul 2026 23:12:46 GMT  
		Size: 68.0 MB (67983892 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8u502-al2-native-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:2fd9cd2836393acb8ec64e17f7c80317a03fb98f31b37854c204bdcfad02b25d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6135820 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe27214b50115e8ee2cc557e408c42762c1b6e27a0e0ba89ea58258b7f719a52`

```dockerfile
```

-	Layers:
	-	`sha256:108566025e6bfcf9de2b43cb9f66337aed456705a049c2d820f666f489379b87`  
		Last Modified: Thu, 23 Jul 2026 23:12:44 GMT  
		Size: 6.1 MB (6125903 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5ee3eb560e55838b7e87a95acf27bfc2cc1126feb968e382b2cc04d40113f3f3`  
		Last Modified: Thu, 23 Jul 2026 23:12:44 GMT  
		Size: 9.9 KB (9917 bytes)  
		MIME: application/vnd.in-toto+json
