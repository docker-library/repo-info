## `amazoncorretto:8u504-al2-native-jre`

```console
$ docker pull amazoncorretto@sha256:e8ca0cf2cc49f011f8d561062b8211bf4e97fd6337f55f8f1ac374dba3c40aa9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8u504-al2-native-jre` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:0261241562972464cdf4c4818c960d927c0d7b98b049f44ca14a5906ace4dadd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.5 MB (123538388 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d7823abf936d0b1f742588c096d0bb2768c21c18745488b21a753ee90e42ed8`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 05 Oct 2026 18:29:29 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:29:29 GMT
CMD ["/bin/bash"]
# Mon, 05 Oct 2026 21:35:53 GMT
ARG version=1.8.0_504.b04-1
# Mon, 05 Oct 2026 21:35:53 GMT
# ARGS: version=1.8.0_504.b04-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && echo $(rpm -K "${CORRETO_TEMP}/${rpm}")     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1;     done     && yum install -y $(yum deplist ${CORRETO_TEMP}/*.rpm |grep provider | grep -v log4j-cve | tr -s ' ' |cut -d ' ' -f 3 )     && yum install -y fontconfig     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Mon, 05 Oct 2026 21:35:53 GMT
ENV LANG=C.UTF-8
# Mon, 05 Oct 2026 21:35:53 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto/jre
```

-	Layers:
	-	`sha256:b96e0f346050b07fd2eef645589e3fcc5352909944ef2fcfa77ed05856b71920`  
		Last Modified: Thu, 01 Oct 2026 15:50:42 GMT  
		Size: 63.0 MB (62964912 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72db2e83e21f8832f2ec0f10feb5eed1f6e8f87db105b25f68acd366668fce1e`  
		Last Modified: Mon, 05 Oct 2026 21:36:07 GMT  
		Size: 60.6 MB (60573476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8u504-al2-native-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:c3ea7c1f04341e64e52a267dd7723fb2e0e9fbc43baf82bbdbd1f7a3cfad8620
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5869718 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c366b94eb5dc22b201d8d496b7ee07c8df222ad0ceb32971e98f5b86aabbdad5`

```dockerfile
```

-	Layers:
	-	`sha256:d8641984738c45a5b88a65d0b23b67519419af721d77243b9571316d6bcda967`  
		Last Modified: Mon, 05 Oct 2026 21:36:05 GMT  
		Size: 5.9 MB (5859918 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dd0185f64b43b73c49a2979c470686d30865d06b4826c0d6e8d4b026a404fbb0`  
		Last Modified: Mon, 05 Oct 2026 21:36:05 GMT  
		Size: 9.8 KB (9800 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8u504-al2-native-jre` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:9ca7bea88c3e2b40c98bfdb87e70cf0130b6d6deaad7434ab7f1ccfbff60223f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.0 MB (118040300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88e24295676e9804c3d4c920912e3143e35b15c9c4bde7d1309a96bee21336e3`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 05 Oct 2026 18:29:25 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:29:25 GMT
CMD ["/bin/bash"]
# Mon, 05 Oct 2026 21:40:58 GMT
ARG version=1.8.0_504.b04-1
# Mon, 05 Oct 2026 21:40:58 GMT
# ARGS: version=1.8.0_504.b04-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && echo $(rpm -K "${CORRETO_TEMP}/${rpm}")     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1;     done     && yum install -y $(yum deplist ${CORRETO_TEMP}/*.rpm |grep provider | grep -v log4j-cve | tr -s ' ' |cut -d ' ' -f 3 )     && yum install -y fontconfig     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Mon, 05 Oct 2026 21:40:58 GMT
ENV LANG=C.UTF-8
# Mon, 05 Oct 2026 21:40:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto/jre
```

-	Layers:
	-	`sha256:cfa04807aef79670ea0d208983fee28fd0a0f407387f8985681ece136ad06f67`  
		Last Modified: Mon, 05 Oct 2026 18:29:41 GMT  
		Size: 64.8 MB (64807371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52c0cd10970afbee4055e95d08d28294d4f21363097ec2fede2e6bb6c12e25bd`  
		Last Modified: Mon, 05 Oct 2026 21:41:13 GMT  
		Size: 53.2 MB (53232929 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8u504-al2-native-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:5229b688756a71e971b4712f776d6be595e3b957855cc420f66f984fd894518a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5671766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ca7146f6bd7c5300d33df61f1da958a35df86bed465b142891b5199c7765fca`

```dockerfile
```

-	Layers:
	-	`sha256:71f1bd2babcd092c5fcd3a4d5096a224e34a9f8afeb5e8162c01fb2835a00f64`  
		Last Modified: Mon, 05 Oct 2026 21:41:11 GMT  
		Size: 5.7 MB (5661887 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:18c9ae1186f8a5e7a70a4f1ff95a10618c741b943fbacd0eadd8bd23f1394e16`  
		Last Modified: Mon, 05 Oct 2026 21:41:11 GMT  
		Size: 9.9 KB (9879 bytes)  
		MIME: application/vnd.in-toto+json
