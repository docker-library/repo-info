## `amazoncorretto:8-al2-native-jdk`

```console
$ docker pull amazoncorretto@sha256:d9be23ecd9fcb2fddf8b07256e5277da51267c9414e4dff8ed303f96c512eb7b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8-al2-native-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:e3cfd1c4ff6511a0d760a01855caebbe44b099742b74fb731d070c7b2b60a034
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.1 MB (138118073 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a4b4c93cbc70d27bc4f78c618eeafcde5912cae7f917426639120173c799dc0`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 22:28:31 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 22:28:31 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 02:45:53 GMT
ARG version=1.8.0_514.b01-1
# Wed, 18 Nov 2026 02:45:53 GMT
# ARGS: version=1.8.0_514.b01-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -v log4j-cve | tr -s ' ' |cut -d ' ' -f 3 );     done     && yum install -y fontconfig     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH} -name "*src.zip" -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Wed, 18 Nov 2026 02:45:53 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:45:53 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
```

-	Layers:
	-	`sha256:b4fd738aaa080ce3c70f1d92c80440b4bf31c13437f6276731da3fd6a37e3dd2`  
		Last Modified: Sat, 14 Nov 2026 04:13:58 GMT  
		Size: 62.9 MB (62929597 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e89abd251e4f762227971f0c454389faed98a60ed458af6680cb38af944e672a`  
		Last Modified: Wed, 18 Nov 2026 02:46:09 GMT  
		Size: 75.2 MB (75188476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-al2-native-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:9dc04da2932de2304aa18413ea41fd0ee5234744ef030fef5f93ab5ca4c92237
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6333272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:190f870622a1339db54a37049f8078583df62b303cd18f3062310d4326d663ca`

```dockerfile
```

-	Layers:
	-	`sha256:58b6a3432fa5893fe0077c7b2b42f17d82225d302f7c1bb09a4011d44034f9c0`  
		Last Modified: Wed, 18 Nov 2026 02:46:07 GMT  
		Size: 6.3 MB (6323435 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b733a270f813fecc5a1173f8d3016bd2b42e339467cb8f54eacba97f9e31f49d`  
		Last Modified: Wed, 18 Nov 2026 02:46:07 GMT  
		Size: 9.8 KB (9837 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8-al2-native-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:9f1ce305a527c979b90fc8138a94217b8e81eba86295a5500e86064b697b9f49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.7 MB (132742281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d63006409f8e63a80e41ecf3a66597bbe7611f17fdbff2fe08444f0e30d4538c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 22:29:53 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 22:29:53 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 02:45:58 GMT
ARG version=1.8.0_514.b01-1
# Wed, 18 Nov 2026 02:45:58 GMT
# ARGS: version=1.8.0_514.b01-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -v log4j-cve | tr -s ' ' |cut -d ' ' -f 3 );     done     && yum install -y fontconfig     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH} -name "*src.zip" -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Wed, 18 Nov 2026 02:45:58 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:45:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
```

-	Layers:
	-	`sha256:440cc69e8f9d2c85d2f689d3242bc99b93cac55a936a1cbebf5a197a5e006a99`  
		Last Modified: Mon, 16 Nov 2026 22:30:09 GMT  
		Size: 64.8 MB (64776402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92e571e08ca44ae95f6bf25e72355f76b2e966ed9500e807d2afa7c007ab11fe`  
		Last Modified: Wed, 18 Nov 2026 02:46:15 GMT  
		Size: 68.0 MB (67965879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-al2-native-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:e70032f6bc745b89fdc23dfe60c022954f6ae701fae55fac76713e893df26df9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6135854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e08268040b4b7a1faf6e6f1626e2693c908ad7aa0988f084d595abb07850593`

```dockerfile
```

-	Layers:
	-	`sha256:76e72d5affb0c53533b196904eabf72930049efd7bab7db3955cca1297f40a79`  
		Last Modified: Wed, 18 Nov 2026 02:46:13 GMT  
		Size: 6.1 MB (6125937 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8292f0ca41ca030bfaeeee5c06c26772da5681da5f8bca5c1287d92630f29b03`  
		Last Modified: Wed, 18 Nov 2026 02:46:13 GMT  
		Size: 9.9 KB (9917 bytes)  
		MIME: application/vnd.in-toto+json
