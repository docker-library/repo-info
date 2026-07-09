## `amazoncorretto:8-al2-native-jdk`

```console
$ docker pull amazoncorretto@sha256:e68579d86d63d01e1aa3d63be3e86312f0af05b82ac58054b3d2f3ca2b28fa77
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8-al2-native-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:b067c595ef23dd358dfb2d019784ebbcd16752ad93b73c92299b55fb88a81c5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.3 MB (188326063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bfcbc16947ca97f9f62fe3c37d27c46977bf7d934c2cb79062765ef3119f7d2`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 08 Jul 2026 20:25:54 GMT
COPY /rootfs/ / # buildkit
# Wed, 08 Jul 2026 20:25:54 GMT
CMD ["/bin/bash"]
# Wed, 08 Jul 2026 21:11:15 GMT
ARG version=1.8.0_492.b09-2
# Wed, 08 Jul 2026 21:11:15 GMT
# ARGS: version=1.8.0_492.b09-2
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -v log4j-cve | tr -s ' ' |cut -d ' ' -f 3 );     done     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH} -name "*src.zip" -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Wed, 08 Jul 2026 21:11:15 GMT
ENV LANG=C.UTF-8
# Wed, 08 Jul 2026 21:11:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
```

-	Layers:
	-	`sha256:900a03988e5535b8fa16eca2a88ea4d98129caeae92c97c1cb9cd28fdddbbaad`  
		Last Modified: Wed, 08 Jul 2026 10:41:40 GMT  
		Size: 63.0 MB (62958380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8e1a536dee4bd15ca0284f5e10108660254b4ecb4f9a807b36daf935170af80`  
		Last Modified: Wed, 08 Jul 2026 21:11:41 GMT  
		Size: 125.4 MB (125367683 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-al2-native-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:6bb839cdd4d72a5e9a2d61ffbadadd695b346e0b44241992c15fca8ae31a8478
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7987225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01bbe670f26179a6892dc3b298bdf80810f5f9b6903d8bb3f8559bb387c02809`

```dockerfile
```

-	Layers:
	-	`sha256:2e803f49aa2c1b35c5141eed74e4f4db36ac0de7cf64ad506ea191bc03b39b6f`  
		Last Modified: Wed, 08 Jul 2026 21:11:39 GMT  
		Size: 8.0 MB (7977515 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2539481fdd8ec6ff4f686f5ae6ef7e17dd8cc8708270a3e759ba0ab7fba41b72`  
		Last Modified: Wed, 08 Jul 2026 21:11:38 GMT  
		Size: 9.7 KB (9710 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8-al2-native-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:422ed6e2ae44126e5cf5f472bcafb39421a376cb98f737c4a8287e8aa514e443
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.4 MB (132443540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78bcb9c910766c9ab82d91c13c4d5d9eab4629640f6b20491b9532e29636ef18`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 08 Jul 2026 20:25:16 GMT
COPY /rootfs/ / # buildkit
# Wed, 08 Jul 2026 20:25:16 GMT
CMD ["/bin/bash"]
# Wed, 08 Jul 2026 21:10:53 GMT
ARG version=1.8.0_492.b09-2
# Wed, 08 Jul 2026 21:10:53 GMT
# ARGS: version=1.8.0_492.b09-2
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -v log4j-cve | tr -s ' ' |cut -d ' ' -f 3 );     done     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH} -name "*src.zip" -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Wed, 08 Jul 2026 21:10:53 GMT
ENV LANG=C.UTF-8
# Wed, 08 Jul 2026 21:10:53 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
```

-	Layers:
	-	`sha256:2fb7467b49ea9922ec92b3b41cd0ae9ae2840cce49082c60c621e4e388aabb23`  
		Last Modified: Wed, 08 Jul 2026 20:25:31 GMT  
		Size: 64.8 MB (64787879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:341e5076972ee0794ef1193feca691e0589e29f7c7393c2dc6f88be3a577b278`  
		Last Modified: Wed, 08 Jul 2026 21:11:10 GMT  
		Size: 67.7 MB (67655661 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-al2-native-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:7cd2469576eeb9757d44da06f0e8ad8200b97cfd0b953a0d903f3458cb609229
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6092828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e45fd3a435f424479004b1aac04504dd73e9ff9ed22d00a76d85611085e628d`

```dockerfile
```

-	Layers:
	-	`sha256:3365fe9ca7d5c71993a494ed4ae18f2d3a81c2bda2368169494f7c4961462449`  
		Last Modified: Wed, 08 Jul 2026 21:11:08 GMT  
		Size: 6.1 MB (6083038 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f4e51614fd3530885f93418bb1577c5a0ac6d364dca619cbd072714419ea63f2`  
		Last Modified: Wed, 08 Jul 2026 21:11:07 GMT  
		Size: 9.8 KB (9790 bytes)  
		MIME: application/vnd.in-toto+json
