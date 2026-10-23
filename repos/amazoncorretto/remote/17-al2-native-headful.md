## `amazoncorretto:17-al2-native-headful`

```console
$ docker pull amazoncorretto@sha256:e2a782339fffbafe9bbd431200d6c5a3d705306f79344e19d32e5b3a6ba0ae77
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-al2-native-headful` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:81b03ad09c16302eb955bd0e22252f1311d08fcfda257f895602a1eb59502811
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.3 MB (154271303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c833118135a43809b9c8d6cc46c5e4fe09a6bad1ba3726fdf507b7f111b64777`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Oct 2026 00:41:58 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:41:58 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 01:10:29 GMT
ARG version=17.0.20.12-1
# Fri, 23 Oct 2026 01:10:29 GMT
# ARGS: version=17.0.20.12-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2.1.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2.1.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -vE "log4j-cve|corretto" | tr -s ' ' |cut -d ' ' -f 3 );     done     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-17-amazon-corretto.${ARCH} -name src.zip -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Fri, 23 Oct 2026 01:10:29 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 01:10:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:9653aa1582ef32674aa011f26c881e60e6136564952476129f41b0f5fee0c8ae`  
		Last Modified: Fri, 23 Oct 2026 00:42:11 GMT  
		Size: 63.0 MB (62973900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd0ff24e81b24bafffeacdc18462e600b5844b5ffebb83e09ee62667c0d22814`  
		Last Modified: Fri, 23 Oct 2026 01:10:46 GMT  
		Size: 91.3 MB (91297403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2-native-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:ed0585316772397464ee5ba28d4726a228f72af123da806a564ae6d3705b0ebd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5876368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52290e6570e76233511d6878b60e2d22c1f5c8c6a10537f9a5c4c883fffad678`

```dockerfile
```

-	Layers:
	-	`sha256:731b344d2925546f61a52ba9f1de9e8b8d2f76c81e22c6fad55a77cf3fc87e4c`  
		Last Modified: Fri, 23 Oct 2026 01:10:44 GMT  
		Size: 5.9 MB (5866778 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:88a09a8178dd600615e3a9d12230bda24b389fa47262f4e921a20572d48e94a7`  
		Last Modified: Fri, 23 Oct 2026 01:10:44 GMT  
		Size: 9.6 KB (9590 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:17-al2-native-headful` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:360c216743c744a87c7553350cb4d446b109f15ace412d8645647ad092d93f17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.9 MB (146852624 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fd33b6b50e1ad7797b6c7520eca1f95c364280e447fa675225fcf18d0547767`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Oct 2026 00:41:41 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:41:41 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 01:10:08 GMT
ARG version=17.0.20.12-1
# Fri, 23 Oct 2026 01:10:08 GMT
# ARGS: version=17.0.20.12-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2.1.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2.1.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -vE "log4j-cve|corretto" | tr -s ' ' |cut -d ' ' -f 3 );     done     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-17-amazon-corretto.${ARCH} -name src.zip -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Fri, 23 Oct 2026 01:10:08 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 01:10:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:90a41cb984a9307d13eb248c95fd13ac0a0631a9e189ff342b8a62cd0d8a0d7d`  
		Last Modified: Fri, 23 Oct 2026 00:41:56 GMT  
		Size: 64.8 MB (64835719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4db74d95bb4fbb98241af5b5073e6f648da8aef4351f98aef74d6bae111b1e8`  
		Last Modified: Fri, 23 Oct 2026 01:10:25 GMT  
		Size: 82.0 MB (82016905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2-native-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:675915c594a4e213f3a9c3db0eb14c8f83574512c27b6a3fd8f360758772bbe2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5668192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bca7a9c773d64bc95cb4946cc0f75ed93f0e863be22510499fcca4ae91e8147d`

```dockerfile
```

-	Layers:
	-	`sha256:601149cda1bd385e4a23943975297c2d034218f29c4270d03c082ffe05513c85`  
		Last Modified: Fri, 23 Oct 2026 01:10:23 GMT  
		Size: 5.7 MB (5658522 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:407a807e6f9bfda6e5c71264c4d217cb3c3f7801ef71fab4723e8bba96e5058f`  
		Last Modified: Fri, 23 Oct 2026 01:10:23 GMT  
		Size: 9.7 KB (9670 bytes)  
		MIME: application/vnd.in-toto+json
