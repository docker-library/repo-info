## `amazoncorretto:8u504-al2-native-jre`

```console
$ docker pull amazoncorretto@sha256:6d04d330420b058ae96645018da4955ee572074f23b52ba2c61ff5b89305aef6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8u504-al2-native-jre` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:d79946cc9841829fbae593134b33a69f97eaf5e947613d6fb1817ee9ed6daf5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.5 MB (123532463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:911b0e4fa2287c6bc5d9c9e273ac84a171a39f7f537ca110bd66263b363f344b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 14 Sep 2026 23:47:23 GMT
COPY /rootfs/ / # buildkit
# Mon, 14 Sep 2026 23:47:23 GMT
CMD ["/bin/bash"]
# Tue, 15 Sep 2026 00:10:56 GMT
ARG version=1.8.0_504.b01-1
# Tue, 15 Sep 2026 00:10:56 GMT
# ARGS: version=1.8.0_504.b01-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && echo $(rpm -K "${CORRETO_TEMP}/${rpm}")     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1;     done     && yum install -y $(yum deplist ${CORRETO_TEMP}/*.rpm |grep provider | grep -v log4j-cve | tr -s ' ' |cut -d ' ' -f 3 )     && yum install -y fontconfig     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Tue, 15 Sep 2026 00:10:56 GMT
ENV LANG=C.UTF-8
# Tue, 15 Sep 2026 00:10:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto/jre
```

-	Layers:
	-	`sha256:0f31d1fce1dda0c9a2775f71f278a80f752c07ac8026cd44ad345d9d5c45de7e`  
		Last Modified: Fri, 04 Sep 2026 16:19:27 GMT  
		Size: 63.0 MB (62964596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8de299c46a05b7db095acfbf9a5cd83b769e3540dece1751c16dad3fb52bfb4`  
		Last Modified: Tue, 15 Sep 2026 00:11:11 GMT  
		Size: 60.6 MB (60567867 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8u504-al2-native-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:e55921709cc868bea434bcb2c5513f3266e51bb86de58d24b646f78834ed15ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5869717 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f30173b581ae17cc6207b0547090066807f2b9b5ab8ba93b4b0ee8c832eb30a`

```dockerfile
```

-	Layers:
	-	`sha256:018b77cc3488690026ef1e630e65ba34371f2500b62ae69d6dccc68379bfd81c`  
		Last Modified: Tue, 15 Sep 2026 00:11:09 GMT  
		Size: 5.9 MB (5859918 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1331e08702f9ee6764767c424aef5e9c7b88ce1ea146dd1867760236a4a0148a`  
		Last Modified: Tue, 15 Sep 2026 00:11:09 GMT  
		Size: 9.8 KB (9799 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8u504-al2-native-jre` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:1c8125880b8dedd0835591a0eb9f56f214e41f7de62a198a6b1b4c7d3a68f423
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.0 MB (118022409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60202bd58e7738fbbd5a88bb819e3e6fbe25df7448ea7954a955e8565379f482`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 17 Sep 2026 21:13:18 GMT
COPY /rootfs/ / # buildkit
# Thu, 17 Sep 2026 21:13:18 GMT
CMD ["/bin/bash"]
# Thu, 17 Sep 2026 22:45:37 GMT
ARG version=1.8.0_504.b01-1
# Thu, 17 Sep 2026 22:45:37 GMT
# ARGS: version=1.8.0_504.b01-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && echo $(rpm -K "${CORRETO_TEMP}/${rpm}")     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1;     done     && yum install -y $(yum deplist ${CORRETO_TEMP}/*.rpm |grep provider | grep -v log4j-cve | tr -s ' ' |cut -d ' ' -f 3 )     && yum install -y fontconfig     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Thu, 17 Sep 2026 22:45:37 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 22:45:37 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto/jre
```

-	Layers:
	-	`sha256:17ad0bfad52234371433d04d036616a4bd4db51019fc530e40379ee1fcd6957a`  
		Last Modified: Fri, 04 Sep 2026 16:20:29 GMT  
		Size: 64.8 MB (64805101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8eb895067a273d7df1d8c3f62f258103ad2c8aedc60d51041447e2017fa2d60c`  
		Last Modified: Thu, 17 Sep 2026 22:45:51 GMT  
		Size: 53.2 MB (53217308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8u504-al2-native-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:041ecf568a7c640fc99e47dbf41ed4d3d638af72d00b2f12edb92aa2572f98e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5671767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b5eeff578cedcfefa425f538912f83b728bd3bb671c05992dc0ed6a26f92ac9`

```dockerfile
```

-	Layers:
	-	`sha256:846c2de8054fa7e2964ffb25cc6476ec8c6aebf236773ac30096d2c494cb83c0`  
		Last Modified: Thu, 17 Sep 2026 22:45:50 GMT  
		Size: 5.7 MB (5661887 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:22607cc2246035c31e958eff7ab1dc6da30d6220a7e857604bb12e8ec9157cf8`  
		Last Modified: Thu, 17 Sep 2026 22:45:49 GMT  
		Size: 9.9 KB (9880 bytes)  
		MIME: application/vnd.in-toto+json
