## `amazoncorretto:8-al2-native-jdk`

```console
$ docker pull amazoncorretto@sha256:484e29c40c8e20c55613f1240e5d54bc38662c05c5f321bc1c3886a82d780496
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8-al2-native-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:68b0fc4cfb1598d202c5d6997aacee75935ec14b8a58acc11cea7c163fa93356
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.1 MB (138118735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fa1c1eb9d84c4ad53293f0a3756a68f04b68cfe28d50357732535a4b6d33bf1`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 04 Aug 2026 00:28:02 GMT
COPY /rootfs/ / # buildkit
# Tue, 04 Aug 2026 00:28:02 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 00:57:18 GMT
ARG version=1.8.0_502.b07-1
# Tue, 04 Aug 2026 00:57:18 GMT
# ARGS: version=1.8.0_502.b07-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -v log4j-cve | tr -s ' ' |cut -d ' ' -f 3 );     done     && yum install -y fontconfig     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH} -name "*src.zip" -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Tue, 04 Aug 2026 00:57:18 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 00:57:18 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
```

-	Layers:
	-	`sha256:88d83595c5bd7b66b54c692ee8c03a4ab3e63d8b091b610b1105ae7142c17890`  
		Last Modified: Tue, 28 Jul 2026 11:47:09 GMT  
		Size: 62.9 MB (62949834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d14c9dd588efb66d13e3575b50cc2c9e3a3567cd89eae317fc4641463e9e8788`  
		Last Modified: Tue, 04 Aug 2026 00:57:34 GMT  
		Size: 75.2 MB (75168901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-al2-native-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:bfb92e678d8e49d6970525c189281c229324b647e92cf9dc4318aa804bb892ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6333242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b652381f85412fa0189010590edd9ddbbc91ff03398c3d7f90811738769b2e7`

```dockerfile
```

-	Layers:
	-	`sha256:b34730c8a970584a84196ef3c57716dd792caa785fca724fb50f1f99482f4291`  
		Last Modified: Tue, 04 Aug 2026 00:57:32 GMT  
		Size: 6.3 MB (6323405 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:44908dee53d3a343df59f74625e75fdb5f56dff060131dd5beb8db7c4e5aef00`  
		Last Modified: Tue, 04 Aug 2026 00:57:32 GMT  
		Size: 9.8 KB (9837 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8-al2-native-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:05f915a057f06e4d5c08ee3ee347cb34944f547ebb7bf415ad368ff16da611d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.7 MB (132749456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd03b8b30645fc8d6c66624246509c6503c00ce97af0e535c0fd4c1eee0460d2`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 20 Aug 2026 16:55:50 GMT
COPY /rootfs/ / # buildkit
# Thu, 20 Aug 2026 16:55:50 GMT
CMD ["/bin/bash"]
# Thu, 20 Aug 2026 17:15:46 GMT
ARG version=1.8.0_504.b01-1
# Thu, 20 Aug 2026 17:15:46 GMT
# ARGS: version=1.8.0_504.b01-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -v log4j-cve | tr -s ' ' |cut -d ' ' -f 3 );     done     && yum install -y fontconfig     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH} -name "*src.zip" -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Thu, 20 Aug 2026 17:15:46 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:15:46 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
```

-	Layers:
	-	`sha256:487930dafcbd912a1d47c9e792c2aea4e910496ba2af16620c70488227a4b1e7`  
		Last Modified: Wed, 19 Aug 2026 14:14:07 GMT  
		Size: 64.8 MB (64789116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fc74267f6d17e4fa8a4158637ef5c75784e5271da405ae0e4bf27567295169a`  
		Last Modified: Thu, 20 Aug 2026 17:16:02 GMT  
		Size: 68.0 MB (67960340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-al2-native-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:f032a3ce3f376045558f42d0d467a6b6c5b6494d41f50e8e4973cd8d6544a9fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6135838 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53b57ca4ea85dced8a6fe21ad0b8ed9a1f629c189477c884d11630c23efb0193`

```dockerfile
```

-	Layers:
	-	`sha256:e6e1f9e4c42914d89bc493451237f8629af9cb0bfac6562138224e331aab8327`  
		Last Modified: Thu, 20 Aug 2026 17:16:00 GMT  
		Size: 6.1 MB (6125923 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:11ad4af04a6adf6e6f866426d325850e1ff82f25073a6fdef35a29fc446e21ff`  
		Last Modified: Thu, 20 Aug 2026 17:16:00 GMT  
		Size: 9.9 KB (9915 bytes)  
		MIME: application/vnd.in-toto+json
