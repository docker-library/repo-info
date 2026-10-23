## `amazoncorretto:8u504-al2-native-jre`

```console
$ docker pull amazoncorretto@sha256:e8df137ffa25c87927b529b08bce0c243743e40f1f3d2080cd6e4239035f850d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8u504-al2-native-jre` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:9025677e523978671c5b818bab033952cd6661555a15a5626b47c3e64e34ad0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.5 MB (123538511 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d866af9a94b33564e015d6e718795a2d5e97f1a52d877232a043688e2788857f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Oct 2026 00:41:58 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:41:58 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 01:09:13 GMT
ARG version=1.8.0_504.b04-1
# Fri, 23 Oct 2026 01:09:13 GMT
# ARGS: version=1.8.0_504.b04-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && echo $(rpm -K "${CORRETO_TEMP}/${rpm}")     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1;     done     && yum install -y $(yum deplist ${CORRETO_TEMP}/*.rpm |grep provider | grep -v log4j-cve | tr -s ' ' |cut -d ' ' -f 3 )     && yum install -y fontconfig     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Fri, 23 Oct 2026 01:09:13 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 01:09:13 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto/jre
```

-	Layers:
	-	`sha256:9653aa1582ef32674aa011f26c881e60e6136564952476129f41b0f5fee0c8ae`  
		Last Modified: Fri, 23 Oct 2026 00:42:11 GMT  
		Size: 63.0 MB (62973900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a76eba1374d2b65e63980411bd2d5e5cf7c431161bcc8127bea76b4ee5aacf8`  
		Last Modified: Fri, 23 Oct 2026 01:09:27 GMT  
		Size: 60.6 MB (60564611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8u504-al2-native-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:5bb99b42b21c87715cb3dbb4018df254235929929109ce0d96d1cf12411de046
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5869718 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1159a72b3a46c7081b37728f4ee4cfa49fc0300a67256d4fc2add8e9c5e3e62`

```dockerfile
```

-	Layers:
	-	`sha256:638a749996117137c93fb3a6a0e8573ad97e7a1152ec872f59157fd8a24edc5c`  
		Last Modified: Fri, 23 Oct 2026 01:09:26 GMT  
		Size: 5.9 MB (5859918 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bf956fe32022b0381f32a4fd8e5480266f008086dcf11971054d83c7768bcaa9`  
		Last Modified: Fri, 23 Oct 2026 01:09:25 GMT  
		Size: 9.8 KB (9800 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8u504-al2-native-jre` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:23d8b1d80d083a3fd67d005b85f59c1cea783cac2daca00211fa578a232383ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.1 MB (118133101 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfd9714e72336894d6b37b1893b90f00abf3a1f2b90f7b8606900ceb8240b284`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Oct 2026 00:41:41 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:41:41 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 01:09:14 GMT
ARG version=1.8.0_504.b04-1
# Fri, 23 Oct 2026 01:09:14 GMT
# ARGS: version=1.8.0_504.b04-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && echo $(rpm -K "${CORRETO_TEMP}/${rpm}")     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1;     done     && yum install -y $(yum deplist ${CORRETO_TEMP}/*.rpm |grep provider | grep -v log4j-cve | tr -s ' ' |cut -d ' ' -f 3 )     && yum install -y fontconfig     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Fri, 23 Oct 2026 01:09:14 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 01:09:14 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto/jre
```

-	Layers:
	-	`sha256:90a41cb984a9307d13eb248c95fd13ac0a0631a9e189ff342b8a62cd0d8a0d7d`  
		Last Modified: Fri, 23 Oct 2026 00:41:56 GMT  
		Size: 64.8 MB (64835719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dad8918982db2c4f0468391c5ca262b3108d6ffc3df17a758d41cf2fb5798dbc`  
		Last Modified: Fri, 23 Oct 2026 01:09:29 GMT  
		Size: 53.3 MB (53297382 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8u504-al2-native-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:15d1d8970f2ab5066039be6a20c7ee70c2727372e0a7fec802f4b4fcb40c9893
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5671767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa7cefb51064126adf1a65d7021d992e414355012482060b0284102c40c2df6e`

```dockerfile
```

-	Layers:
	-	`sha256:d9cec949d1384ba6f1e641a40e2b4044a3107dbd99622cffcd2fc81eeee00f62`  
		Last Modified: Fri, 23 Oct 2026 01:09:27 GMT  
		Size: 5.7 MB (5661887 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0b9ecaf0689f57624bd054b0f8538b7ff06658636708145e22d1d579941057a9`  
		Last Modified: Fri, 23 Oct 2026 01:09:27 GMT  
		Size: 9.9 KB (9880 bytes)  
		MIME: application/vnd.in-toto+json
