## `amazoncorretto:17-al2-native-jdk`

```console
$ docker pull amazoncorretto@sha256:3a6cca8c6f29f0725c88c1b6a4ea1e31a0d5b81276c45b421d3b976f5871bbdc
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-al2-native-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:f8907da4fb03410e0b2883702001662831f7ad2cc3f9716722e6e12e513cb1fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.0 MB (229004397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee688010d54556b392cb030d2262bdffc8c5d2fb1f275cbfad77cb54abe9313f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 02 Nov 2026 19:56:12 GMT
COPY /rootfs/ / # buildkit
# Mon, 02 Nov 2026 19:56:12 GMT
CMD ["/bin/bash"]
# Mon, 02 Nov 2026 20:11:15 GMT
ARG version=17.0.21.0.11-1
# Mon, 02 Nov 2026 20:11:15 GMT
ARG resource_version=17.0.21.0.11
# Mon, 02 Nov 2026 20:11:15 GMT
# ARGS: version=17.0.21.0.11-1 resource_version=17.0.21.0.11
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2.1.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2.1.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2.1.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2.1.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && if [[ ${rpm} != *jmods* ]]; then       yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -vE "log4j-cve|corretto" | tr -s ' ' |cut -d ' ' -f 3 );       fi;       done     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-17-amazon-corretto.${ARCH} -name src.zip -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Mon, 02 Nov 2026 20:11:15 GMT
ENV LANG=C.UTF-8
# Mon, 02 Nov 2026 20:11:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:0495c25dad2c432d2725b987a8e120fbea60c2f52ab965d1194495d66bd54a79`  
		Last Modified: Sat, 31 Oct 2026 04:10:58 GMT  
		Size: 62.9 MB (62938853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:091f07c8b8809b640d27f3ca9a40a49ba52813e95883fa46363fe9516e96d1a8`  
		Last Modified: Mon, 02 Nov 2026 20:11:35 GMT  
		Size: 166.1 MB (166065544 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2-native-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:6159b533342e1eb0119ed8875730e8c254b3eee8325a85bc9974525deeb11312
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (5982734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f145f964512da76e36fa51a890dcadeead7a64e28c7dd7a245b1330c474bb7c5`

```dockerfile
```

-	Layers:
	-	`sha256:869e0a9a34c7c50de8c8c3d9986ee5c1731f5903299312fef150e8224b34e36c`  
		Last Modified: Mon, 02 Nov 2026 20:11:32 GMT  
		Size: 6.0 MB (5972784 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8cb0da6c2a86b6c966feeeddddc5f82955c4271f4697da5adb8a683ea6738c32`  
		Last Modified: Mon, 02 Nov 2026 20:11:32 GMT  
		Size: 9.9 KB (9950 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:17-al2-native-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:5e8b9f011c35a24d9957bcaa25742feef30bee9a47da39b4e1de1c1ac254fc53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.5 MB (221458300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9230b9d09749388721c00c708ee264b92834f76feedb6275e46adcc5382eba8`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 02 Nov 2026 19:56:42 GMT
COPY /rootfs/ / # buildkit
# Mon, 02 Nov 2026 19:56:42 GMT
CMD ["/bin/bash"]
# Mon, 02 Nov 2026 20:10:53 GMT
ARG version=17.0.21.0.11-1
# Mon, 02 Nov 2026 20:10:53 GMT
ARG resource_version=17.0.21.0.11
# Mon, 02 Nov 2026 20:10:53 GMT
# ARGS: version=17.0.21.0.11-1 resource_version=17.0.21.0.11
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2.1.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2.1.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2.1.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2.1.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && if [[ ${rpm} != *jmods* ]]; then       yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -vE "log4j-cve|corretto" | tr -s ' ' |cut -d ' ' -f 3 );       fi;       done     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-17-amazon-corretto.${ARCH} -name src.zip -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Mon, 02 Nov 2026 20:10:53 GMT
ENV LANG=C.UTF-8
# Mon, 02 Nov 2026 20:10:53 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:ec84068a79e503a31a893b9fd91255e63276a7d88c803d10789070f5f0d1907a`  
		Last Modified: Mon, 02 Nov 2026 19:56:57 GMT  
		Size: 64.8 MB (64805958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52a7b0ac6f8456ead053eff49217df0cd0a67ad68636b291777da42983510781`  
		Last Modified: Mon, 02 Nov 2026 20:11:16 GMT  
		Size: 156.7 MB (156652342 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2-native-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:5791c86cab2e784843259f4f1bf64963dd988a1cef58a5203d7dd6c854be5d1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5774685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e81a04b66d9ceddd70a9866ec7865d703decfdcdb4107a22f2b2889c465563ec`

```dockerfile
```

-	Layers:
	-	`sha256:8709f882a072266e0301470e39de80ac2b253dc73514c9d0f5bb3943934cff5b`  
		Last Modified: Mon, 02 Nov 2026 20:11:12 GMT  
		Size: 5.8 MB (5764655 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:676281b062b14e301ad77859e0b0affe3a0d2e1ae2035e90b20f892165968107`  
		Last Modified: Mon, 02 Nov 2026 20:11:12 GMT  
		Size: 10.0 KB (10030 bytes)  
		MIME: application/vnd.in-toto+json
