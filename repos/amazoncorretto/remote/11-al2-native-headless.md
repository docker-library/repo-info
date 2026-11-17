## `amazoncorretto:11-al2-native-headless`

```console
$ docker pull amazoncorretto@sha256:766f52eea812dc5c99564cfeb3a493f48b6a5ff88a764effa41e8109cd84322e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:11-al2-native-headless` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:313413571688c02cda2dbb0afc4a251cb909c20d3faded3cec03558ff041ea38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.3 MB (217333094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce45a0f1884edd8b4cfd9df9b9197a191973301a43727755adb204dc4265af7e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 22:28:31 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 22:28:31 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 23:10:06 GMT
ARG version=11.0.33.0.10-1
# Mon, 16 Nov 2026 23:10:06 GMT
ARG resource_version=11.0.33.0.10
# Mon, 16 Nov 2026 23:10:06 GMT
# ARGS: version=11.0.33.0.10-1 resource_version=11.0.33.0.10
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -vE "log4j-cve|corretto" | tr -s ' ' |cut -d ' ' -f 3 );     done     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-11-amazon-corretto.${ARCH} -name src.zip -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Mon, 16 Nov 2026 23:10:06 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 23:10:06 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:b4fd738aaa080ce3c70f1d92c80440b4bf31c13437f6276731da3fd6a37e3dd2`  
		Last Modified: Sat, 14 Nov 2026 04:13:58 GMT  
		Size: 62.9 MB (62929597 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c734cdf1e6cde6d639f94052ad95654906df9db1d59947337ab56b3260c3bca`  
		Last Modified: Mon, 16 Nov 2026 23:10:28 GMT  
		Size: 154.4 MB (154403497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-al2-native-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:9a14f21ae0f4437251928bd4589b0ba4c602f1244fa236c4011bcdfb1b2d1a8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5692789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:022e3230a557d742e3d111010853568470a38c5eb08543b0b294ab83b2ed7bca`

```dockerfile
```

-	Layers:
	-	`sha256:138132ef960482755debe5e29f761205d939c3f2f3332d9a00a1a4c79c2a0aff`  
		Last Modified: Mon, 16 Nov 2026 23:10:25 GMT  
		Size: 5.7 MB (5683436 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d7d114f5b72db1fc762339fa1eb31bad33313274f1bc73589419d1543824e29f`  
		Last Modified: Mon, 16 Nov 2026 23:10:24 GMT  
		Size: 9.4 KB (9353 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:11-al2-native-headless` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:2c02e68a8bf942ab5f42eff4eef7b93e78422b666b139c338e5a7a7d393e76e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.4 MB (211432647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c343f9d09ae41b0c40c5a8a1190593cd4e3408b7fbcf8bd86665c8c90e26a7c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 22:29:53 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 22:29:53 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 23:09:47 GMT
ARG version=11.0.33.0.10-1
# Mon, 16 Nov 2026 23:09:47 GMT
ARG resource_version=11.0.33.0.10
# Mon, 16 Nov 2026 23:09:47 GMT
# ARGS: version=11.0.33.0.10-1 resource_version=11.0.33.0.10
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -vE "log4j-cve|corretto" | tr -s ' ' |cut -d ' ' -f 3 );     done     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-11-amazon-corretto.${ARCH} -name src.zip -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Mon, 16 Nov 2026 23:09:47 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 23:09:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:440cc69e8f9d2c85d2f689d3242bc99b93cac55a936a1cbebf5a197a5e006a99`  
		Last Modified: Mon, 16 Nov 2026 22:30:09 GMT  
		Size: 64.8 MB (64776402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:323528d6fd58193375a19e76900cd3c66653bbb2ab2e166c46ae42222873f67b`  
		Last Modified: Mon, 16 Nov 2026 23:10:08 GMT  
		Size: 146.7 MB (146656245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-al2-native-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:ee41b32a3b0fc0a66c2a341e7d5a56b8affcfea1e0704480c125e9dddd0c9cfc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5511337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c0f4c4335f803735eac147e164b9e58ccaebfe200a8115392b9561226856d70`

```dockerfile
```

-	Layers:
	-	`sha256:178cc02db47d2619fde8974355f27a4bd883fc01ea1af90ca7d2b47b41df1115`  
		Last Modified: Mon, 16 Nov 2026 23:10:04 GMT  
		Size: 5.5 MB (5501904 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5654a6a09396e0b1b40b30b71b285867cd432a51892be76c1e7080425c2ff54c`  
		Last Modified: Mon, 16 Nov 2026 23:10:04 GMT  
		Size: 9.4 KB (9433 bytes)  
		MIME: application/vnd.in-toto+json
