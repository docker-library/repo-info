## `amazoncorretto:8u512-al2-native-jdk`

```console
$ docker pull amazoncorretto@sha256:6be8536a45568783a4bbe2122b8ea07a54eff54940055648a01b624168da73e7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8u512-al2-native-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:42b5106a32cbaf70a90d1b572c2ceb71acd75cadf123ddc83f33d62a53e2159f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.1 MB (138096685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7eaca88a192ba885a93fc92a9801ee2d2fa34e5b36176c6ec195c922e0fd74c9`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 22:28:31 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 22:28:31 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 23:09:31 GMT
ARG version=1.8.0_512.b09-1
# Mon, 16 Nov 2026 23:09:31 GMT
# ARGS: version=1.8.0_512.b09-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -v log4j-cve | tr -s ' ' |cut -d ' ' -f 3 );     done     && yum install -y fontconfig     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH} -name "*src.zip" -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Mon, 16 Nov 2026 23:09:31 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 23:09:31 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
```

-	Layers:
	-	`sha256:b4fd738aaa080ce3c70f1d92c80440b4bf31c13437f6276731da3fd6a37e3dd2`  
		Last Modified: Sat, 14 Nov 2026 04:13:58 GMT  
		Size: 62.9 MB (62929597 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c587699f9a598c840506467d58cfecbe12d672d1f4348e25793ec7bf2301ed1`  
		Last Modified: Mon, 16 Nov 2026 23:09:47 GMT  
		Size: 75.2 MB (75167088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8u512-al2-native-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:75e22265191de6fdb51045cf3a303983190fc0dc4937f846dc7681ca99d5d64e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6333271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f585cc218ffff3e494f6636b38a742e9a8322020ec7a1ae0d1db5457d076769`

```dockerfile
```

-	Layers:
	-	`sha256:44c5b794f93805cbeb90a689bc78b8d03a7c2f1130664821a5ce3468c17af320`  
		Last Modified: Mon, 16 Nov 2026 23:09:46 GMT  
		Size: 6.3 MB (6323435 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:96cb7b3957faa74e71d7596140bb37911f0fafd3ec6b08ec6d72050f3d7692ac`  
		Last Modified: Mon, 16 Nov 2026 23:09:45 GMT  
		Size: 9.8 KB (9836 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8u512-al2-native-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:567e00c580769f1106db6e80bd588dbd12fd615fdc39a61a9fa8d77d940844c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.7 MB (132739257 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a21b44464c772410a441c82d2cb910682447585db8024d57a9c02bd8c809a61`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 22:29:53 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 22:29:53 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 23:09:23 GMT
ARG version=1.8.0_512.b09-1
# Mon, 16 Nov 2026 23:09:23 GMT
# ARGS: version=1.8.0_512.b09-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -v log4j-cve | tr -s ' ' |cut -d ' ' -f 3 );     done     && yum install -y fontconfig     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH} -name "*src.zip" -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Mon, 16 Nov 2026 23:09:23 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 23:09:23 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
```

-	Layers:
	-	`sha256:440cc69e8f9d2c85d2f689d3242bc99b93cac55a936a1cbebf5a197a5e006a99`  
		Last Modified: Mon, 16 Nov 2026 22:30:09 GMT  
		Size: 64.8 MB (64776402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e397411085eade14e84825aa953410644b10fdbcf74e341c6e89406085b3d05`  
		Last Modified: Mon, 16 Nov 2026 23:09:40 GMT  
		Size: 68.0 MB (67962855 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8u512-al2-native-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:b1f1c42c4b4dca3a779d99357c840a85abae7796e4f168324d0aa9a4434c75ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6135854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e67536bbcd96fe797bcc9360b3493d26c40690cbcfc8a667ea9eb2e9c631ebeb`

```dockerfile
```

-	Layers:
	-	`sha256:36a28d057da01c42ed1576a1b993258895f876ade82e9df696a1189e97444b64`  
		Last Modified: Mon, 16 Nov 2026 23:09:38 GMT  
		Size: 6.1 MB (6125937 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cd97447a6a76ccb822ce38afc12ecc5ddc232f064f307db2b1793bb640a4f864`  
		Last Modified: Mon, 16 Nov 2026 23:09:38 GMT  
		Size: 9.9 KB (9917 bytes)  
		MIME: application/vnd.in-toto+json
