## `amazoncorretto:8u502-al2-native-jre`

```console
$ docker pull amazoncorretto@sha256:1188d7d0642f4cd7b7629a2b2d804cbb0c17a367f2848b5e5aefb0ebaf7ed938
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8u502-al2-native-jre` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:1ea2cdcf676a8d47da46f8fbd6ad9a448acf967f069f4e868f97847ea4e73b2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.5 MB (123521823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86ff4a4b23c56302fa1ad2a457a11a44924c5c26d1520513be66be892da1e12d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:47 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:47 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:10:42 GMT
ARG version=1.8.0_502.b07-1
# Thu, 23 Jul 2026 23:10:42 GMT
# ARGS: version=1.8.0_502.b07-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && echo $(rpm -K "${CORRETO_TEMP}/${rpm}")     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1;     done     && yum install -y $(yum deplist ${CORRETO_TEMP}/*.rpm |grep provider | grep -v log4j-cve | tr -s ' ' |cut -d ' ' -f 3 )     && yum install -y fontconfig     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Thu, 23 Jul 2026 23:10:42 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:10:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto/jre
```

-	Layers:
	-	`sha256:06aa8a8412ddcd11af3d73b72c1ed58ba902c9428472a38c780460385a530107`  
		Last Modified: Sat, 11 Jul 2026 02:13:53 GMT  
		Size: 63.0 MB (62957295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61231b6d9fbb6f12bc59771c6c5a901986c3fcd71075d4465dc4437dfa571f87`  
		Last Modified: Thu, 23 Jul 2026 23:10:56 GMT  
		Size: 60.6 MB (60564528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8u502-al2-native-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:ae690b1be4132ce49391c7382437756a57a6abd721cc768a5c78bf79bba846ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5869684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79073e8e1610b1168af0437860f67b77a7d62d12b7f557fe4ded54d0d1735473`

```dockerfile
```

-	Layers:
	-	`sha256:47bc5110ff322b1687566fe84f4ab2e986841cb9b06fcf8b37abbdd2246635fb`  
		Last Modified: Thu, 23 Jul 2026 23:10:55 GMT  
		Size: 5.9 MB (5859884 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d22f9314bbe3d44b10412c88f85190e7123f6fa8557902c6a4423925303a5ffd`  
		Last Modified: Thu, 23 Jul 2026 23:10:54 GMT  
		Size: 9.8 KB (9800 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8u502-al2-native-jre` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:3f9192ef8b694c700f1cf50ca2190a419c4413abbfd4260201835843832333d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.0 MB (118020359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:636f90dde3906291c5ba313c25e68241b6b891f2ca0b298b445a44403fa4bbf6`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:40 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:40 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:12:22 GMT
ARG version=1.8.0_502.b07-1
# Thu, 23 Jul 2026 23:12:22 GMT
# ARGS: version=1.8.0_502.b07-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && echo $(rpm -K "${CORRETO_TEMP}/${rpm}")     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1;     done     && yum install -y $(yum deplist ${CORRETO_TEMP}/*.rpm |grep provider | grep -v log4j-cve | tr -s ' ' |cut -d ' ' -f 3 )     && yum install -y fontconfig     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Thu, 23 Jul 2026 23:12:22 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:12:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto/jre
```

-	Layers:
	-	`sha256:7da2ddf99845df800b9ce1ec0c9889076ad3ba27fd4e61b3ef728e424f1672f1`  
		Last Modified: Mon, 13 Jul 2026 18:19:45 GMT  
		Size: 64.8 MB (64790249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c82f7d0fce7cd0cfb87d7adfc21f690f49cd3c7be9b13fdfa18530c224bfc64d`  
		Last Modified: Thu, 23 Jul 2026 23:12:36 GMT  
		Size: 53.2 MB (53230110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8u502-al2-native-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:8a1d54a38e943b70705d3e6b5aa3fc18169a64a9f88abece18df2d9c941e51cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5671733 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97cfb8ec908dae6a1befc88505bcb3ff5c9c09bb99dd043a70bb23e28e96c2bd`

```dockerfile
```

-	Layers:
	-	`sha256:bd0f444ab8d8e8d4b6f1b7fc405b7ab6075dc2955dbaee098ed93ffc0430896d`  
		Last Modified: Thu, 23 Jul 2026 23:12:35 GMT  
		Size: 5.7 MB (5661853 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:970e9278069beeb43a041ff98b458b35fca6fc132eaaf15e6828821dfd18c1d6`  
		Last Modified: Thu, 23 Jul 2026 23:12:35 GMT  
		Size: 9.9 KB (9880 bytes)  
		MIME: application/vnd.in-toto+json
