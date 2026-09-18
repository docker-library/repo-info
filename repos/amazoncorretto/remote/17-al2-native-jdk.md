## `amazoncorretto:17-al2-native-jdk`

```console
$ docker pull amazoncorretto@sha256:f9f26b422f5c2af7334bd8cb7b08c63f6da884fee3342f25e20b4e92041ab0de
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-al2-native-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:be5248958aa0c2c24907abdc264e1a564e45561226e9b1d1299b5d4aa3afae39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.8 MB (228783474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3347e8d6cdb63c96249ab1af3ddef4f94dc7fc7341f1dfa30a6009289adba77b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 14 Sep 2026 23:47:23 GMT
COPY /rootfs/ / # buildkit
# Mon, 14 Sep 2026 23:47:23 GMT
CMD ["/bin/bash"]
# Tue, 15 Sep 2026 00:12:11 GMT
ARG version=17.0.20.10-1
# Tue, 15 Sep 2026 00:12:11 GMT
# ARGS: version=17.0.20.10-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2.1.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2.1.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2.1.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2.1.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && if [[ ${rpm} != *jmods* ]]; then       yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -vE "log4j-cve|corretto" | tr -s ' ' |cut -d ' ' -f 3 );       fi;       done     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-17-amazon-corretto.${ARCH} -name src.zip -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Tue, 15 Sep 2026 00:12:11 GMT
ENV LANG=C.UTF-8
# Tue, 15 Sep 2026 00:12:11 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:0f31d1fce1dda0c9a2775f71f278a80f752c07ac8026cd44ad345d9d5c45de7e`  
		Last Modified: Fri, 04 Sep 2026 16:19:27 GMT  
		Size: 63.0 MB (62964596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91c9e7aa1f49a82e78c89363de6ec18e48c75d3764c0f9889ad3fa2b2d98d544`  
		Last Modified: Tue, 15 Sep 2026 00:12:32 GMT  
		Size: 165.8 MB (165818878 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2-native-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:817ef7b4f80e2810361499d5e73d4c80988056f7f9d532dbdcb4cd8567bac831
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (5982838 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af807e733309dd510ec633c0d1129e90c50d153d96df1789da46b725aef8e8e2`

```dockerfile
```

-	Layers:
	-	`sha256:269993b8e6435d1b94da7973dde365b632fb498ee644a0c5481954081d165d97`  
		Last Modified: Tue, 15 Sep 2026 00:12:29 GMT  
		Size: 6.0 MB (5972778 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0819c1cd33953eeb453609b19cc5d55b75dab9369845c943a5305fce74747dd8`  
		Last Modified: Tue, 15 Sep 2026 00:12:29 GMT  
		Size: 10.1 KB (10060 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:17-al2-native-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:04e2eb2f51a0933479491e59b026b91425c2f01d96aefa960ff436b7a4d8ca2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.1 MB (221063749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3abfdcf87476a87656100b6a533fc3d2029aee66a06cf5d4b0664420ba30d6b2`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 17 Sep 2026 21:13:18 GMT
COPY /rootfs/ / # buildkit
# Thu, 17 Sep 2026 21:13:18 GMT
CMD ["/bin/bash"]
# Thu, 17 Sep 2026 22:46:51 GMT
ARG version=17.0.20.10-1
# Thu, 17 Sep 2026 22:46:51 GMT
# ARGS: version=17.0.20.10-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2.1.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2.1.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2.1.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2.1.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && if [[ ${rpm} != *jmods* ]]; then       yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -vE "log4j-cve|corretto" | tr -s ' ' |cut -d ' ' -f 3 );       fi;       done     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-17-amazon-corretto.${ARCH} -name src.zip -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Thu, 17 Sep 2026 22:46:51 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 22:46:51 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:17ad0bfad52234371433d04d036616a4bd4db51019fc530e40379ee1fcd6957a`  
		Last Modified: Fri, 04 Sep 2026 16:20:29 GMT  
		Size: 64.8 MB (64805101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43ea2bf72e14b33403357f7b98c01eb5882e3dae0de49bd3cc26f07a567637b3`  
		Last Modified: Thu, 17 Sep 2026 22:47:15 GMT  
		Size: 156.3 MB (156258648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2-native-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:2732a63b2f6f3f92456a5cdafa4848b2fe9b624c2e2acf90f67457846535fdbf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5774789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8891f5da25d186b1979c860b16bfd0c816d37eca71e2d211b4a7744698265c1`

```dockerfile
```

-	Layers:
	-	`sha256:5587990c60a295053010228da5a77136cef5a7ee1bebd65078d850b6465e1dce`  
		Last Modified: Thu, 17 Sep 2026 22:47:11 GMT  
		Size: 5.8 MB (5764649 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d3af2044dc3a885457ff02c2a2c433a7c24b0559142857a4599ca6c177c856b8`  
		Last Modified: Thu, 17 Sep 2026 22:47:11 GMT  
		Size: 10.1 KB (10140 bytes)  
		MIME: application/vnd.in-toto+json
