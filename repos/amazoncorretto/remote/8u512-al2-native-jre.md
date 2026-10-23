## `amazoncorretto:8u512-al2-native-jre`

```console
$ docker pull amazoncorretto@sha256:ea725a2acdc0c9d2b9b089479668b7bf8383c99146307cb4257e76caeb26dcde
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8u512-al2-native-jre` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:04a4f56dcda92e6d9450085c477a40115a1af23325544974cfdfd7e9970890ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.6 MB (123560356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba8d373716e9be489896889ad7bad9994db02959fa7a2898c461319198fa2aa9`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Oct 2026 00:41:58 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:41:58 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 18:07:18 GMT
ARG version=1.8.0_512.b08-1
# Fri, 23 Oct 2026 18:07:18 GMT
# ARGS: version=1.8.0_512.b08-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && echo $(rpm -K "${CORRETO_TEMP}/${rpm}")     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1;     done     && yum install -y $(yum deplist ${CORRETO_TEMP}/*.rpm |grep provider | grep -v log4j-cve | tr -s ' ' |cut -d ' ' -f 3 )     && yum install -y fontconfig     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Fri, 23 Oct 2026 18:07:18 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 18:07:18 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto/jre
```

-	Layers:
	-	`sha256:9653aa1582ef32674aa011f26c881e60e6136564952476129f41b0f5fee0c8ae`  
		Last Modified: Fri, 23 Oct 2026 00:42:11 GMT  
		Size: 63.0 MB (62973900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d71b53560191bd1a82e2c49e20319f6c71b4ff6fb520e360829a92c26889fd1c`  
		Last Modified: Fri, 23 Oct 2026 18:07:33 GMT  
		Size: 60.6 MB (60586456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8u512-al2-native-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:98874e08beb96686015c03292ec84aaafbf7d4c6ac398f63e1d900ef21f94710
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5869718 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be934f33909f040abba9eed346bbd8810efccda24bb457b385f26ad042f67b83`

```dockerfile
```

-	Layers:
	-	`sha256:83e5add0c8e78780f05c9d7c35963d07283d6b7a0853cb61063e8d6e71cb9beb`  
		Last Modified: Fri, 23 Oct 2026 18:07:32 GMT  
		Size: 5.9 MB (5859918 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5349f1e006453e2caa1926b43cd078b4268c7eee773a6b1916e2d9300ec71262`  
		Last Modified: Fri, 23 Oct 2026 18:07:31 GMT  
		Size: 9.8 KB (9800 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8u512-al2-native-jre` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:7e8a849c5b9c1c402d0985db479f0f22886e26ce7fc67993fe6e6ef1e95ff550
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.1 MB (118143642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:252c76fc00cf0de162444485edb02f744e599739fb3af49ab55c77198f9b2a32`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Oct 2026 00:41:41 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:41:41 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 18:06:51 GMT
ARG version=1.8.0_512.b08-1
# Fri, 23 Oct 2026 18:06:51 GMT
# ARGS: version=1.8.0_512.b08-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && echo $(rpm -K "${CORRETO_TEMP}/${rpm}")     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1;     done     && yum install -y $(yum deplist ${CORRETO_TEMP}/*.rpm |grep provider | grep -v log4j-cve | tr -s ' ' |cut -d ' ' -f 3 )     && yum install -y fontconfig     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Fri, 23 Oct 2026 18:06:51 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 18:06:51 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto/jre
```

-	Layers:
	-	`sha256:90a41cb984a9307d13eb248c95fd13ac0a0631a9e189ff342b8a62cd0d8a0d7d`  
		Last Modified: Fri, 23 Oct 2026 00:41:56 GMT  
		Size: 64.8 MB (64835719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f7490421e55f7c22b185ba3a7dc011d132d7da1a22edeb86041f5b2ba557959`  
		Last Modified: Fri, 23 Oct 2026 18:07:07 GMT  
		Size: 53.3 MB (53307923 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8u512-al2-native-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:c0f58dffdbb3f6685701ddd5f859edd0091ce4183acd3a14e57d9ce25c2045c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5671767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96cf464a0dd34eacd37932045045103930c0a633e053c8f0dbf7695a26b65605`

```dockerfile
```

-	Layers:
	-	`sha256:6c7d1150805929f70490f076662910816d2d01906ec25fe85b8412bf178b7847`  
		Last Modified: Fri, 23 Oct 2026 18:07:05 GMT  
		Size: 5.7 MB (5661887 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d3c82ea7f19078d6811aa388a6d3e78c574170c985f428fec82917950b1e5358`  
		Last Modified: Fri, 23 Oct 2026 18:07:05 GMT  
		Size: 9.9 KB (9880 bytes)  
		MIME: application/vnd.in-toto+json
