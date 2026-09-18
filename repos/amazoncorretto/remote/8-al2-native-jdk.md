## `amazoncorretto:8-al2-native-jdk`

```console
$ docker pull amazoncorretto@sha256:af9b7be2fa9fc8c9bfcd67ecb383d2fb9c0d2c079d8debbde30144ba0e5d7530
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8-al2-native-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:267c78102e8ec5757e3a55f7d93c05a7dd714573fbb527e39adbe77c33b4a932
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.1 MB (138124172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35891485fb6fc1fd8416703871763b3069355ff6d4eae919813f655efef3cc37`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 14 Sep 2026 23:47:23 GMT
COPY /rootfs/ / # buildkit
# Mon, 14 Sep 2026 23:47:23 GMT
CMD ["/bin/bash"]
# Tue, 15 Sep 2026 00:11:06 GMT
ARG version=1.8.0_504.b01-1
# Tue, 15 Sep 2026 00:11:06 GMT
# ARGS: version=1.8.0_504.b01-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -v log4j-cve | tr -s ' ' |cut -d ' ' -f 3 );     done     && yum install -y fontconfig     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH} -name "*src.zip" -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Tue, 15 Sep 2026 00:11:06 GMT
ENV LANG=C.UTF-8
# Tue, 15 Sep 2026 00:11:06 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
```

-	Layers:
	-	`sha256:0f31d1fce1dda0c9a2775f71f278a80f752c07ac8026cd44ad345d9d5c45de7e`  
		Last Modified: Fri, 04 Sep 2026 16:19:27 GMT  
		Size: 63.0 MB (62964596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a39073326f159e402a937c8808e752c205d83f719da00395e2d3e3386c10b28`  
		Last Modified: Tue, 15 Sep 2026 00:11:23 GMT  
		Size: 75.2 MB (75159576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-al2-native-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:cba1536eb33251f088ebaea24d21d4014ea1493f1eae492c31d216693fb3982c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6333272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8225a0be8e8904923c78a9a6d18449f6356f6867af284d9f78fb6f6fab40405c`

```dockerfile
```

-	Layers:
	-	`sha256:e68d30e1e03f732bd3abeb12e5b92f2ab011ed65474a0e758fa2f841c798d4e2`  
		Last Modified: Tue, 15 Sep 2026 00:11:22 GMT  
		Size: 6.3 MB (6323435 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:87a386b7d03318b7d92fca0e722f95f47a99e8558e2d59120e37c339feb99ad2`  
		Last Modified: Tue, 15 Sep 2026 00:11:21 GMT  
		Size: 9.8 KB (9837 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8-al2-native-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:3b0bad19463c8ae5278ad65f77e820e929317d9d8e3d9c4eca965aa7f000acd0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.8 MB (132775988 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f28f025669771b6f5a9628a6b8be5c706a33c60ea1c8c3966e5810b748a847c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 17 Sep 2026 21:13:18 GMT
COPY /rootfs/ / # buildkit
# Thu, 17 Sep 2026 21:13:18 GMT
CMD ["/bin/bash"]
# Thu, 17 Sep 2026 22:45:44 GMT
ARG version=1.8.0_504.b01-1
# Thu, 17 Sep 2026 22:45:44 GMT
# ARGS: version=1.8.0_504.b01-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -v log4j-cve | tr -s ' ' |cut -d ' ' -f 3 );     done     && yum install -y fontconfig     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH} -name "*src.zip" -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Thu, 17 Sep 2026 22:45:44 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 22:45:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
```

-	Layers:
	-	`sha256:17ad0bfad52234371433d04d036616a4bd4db51019fc530e40379ee1fcd6957a`  
		Last Modified: Fri, 04 Sep 2026 16:20:29 GMT  
		Size: 64.8 MB (64805101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0910b19d800414a794062aac9d8a9a056a656f028dadc338ae05e6a52808af3`  
		Last Modified: Thu, 17 Sep 2026 22:46:01 GMT  
		Size: 68.0 MB (67970887 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-al2-native-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:b1c0782bb08acf28d0914c9bd75fd985ff30eaaa490bdc3c5dc9dd5d521bf0be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6135853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b00a1bfc2edf5bab358cdc93b8ea5eb1ca4f8d6b65d1711dded34a5245e239ef`

```dockerfile
```

-	Layers:
	-	`sha256:bc8f5d86e6a5c6a5ef2a7a346d936b449d089a55792d0984b99be811c0623d2f`  
		Last Modified: Thu, 17 Sep 2026 22:45:59 GMT  
		Size: 6.1 MB (6125937 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6c84c82a8a7177532e72b40b376aef0f47d9cdc39261ffe4902ce99b7becd624`  
		Last Modified: Thu, 17 Sep 2026 22:45:59 GMT  
		Size: 9.9 KB (9916 bytes)  
		MIME: application/vnd.in-toto+json
