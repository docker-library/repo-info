## `amazoncorretto:8u502-al2-native-jre`

```console
$ docker pull amazoncorretto@sha256:6b588b7899544cb910f70a9f688c99caa60cd1f983363f794377a6ae0293c785
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8u502-al2-native-jre` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:b4366520a80ad8e6a769d84ae80df6ec4005da9642288d12c27afd6252879691
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.5 MB (123525760 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a87974b46e2d411fd08803f6851e387e61b617390c2d428d650de750b1617ded`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 04 Aug 2026 00:28:02 GMT
COPY /rootfs/ / # buildkit
# Tue, 04 Aug 2026 00:28:02 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 00:57:10 GMT
ARG version=1.8.0_502.b07-1
# Tue, 04 Aug 2026 00:57:10 GMT
# ARGS: version=1.8.0_502.b07-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && echo $(rpm -K "${CORRETO_TEMP}/${rpm}")     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1;     done     && yum install -y $(yum deplist ${CORRETO_TEMP}/*.rpm |grep provider | grep -v log4j-cve | tr -s ' ' |cut -d ' ' -f 3 )     && yum install -y fontconfig     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Tue, 04 Aug 2026 00:57:10 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 00:57:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto/jre
```

-	Layers:
	-	`sha256:88d83595c5bd7b66b54c692ee8c03a4ab3e63d8b091b610b1105ae7142c17890`  
		Last Modified: Tue, 28 Jul 2026 11:47:09 GMT  
		Size: 62.9 MB (62949834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:beded13021b0453e7d3777c570df470399cd338f94b21753b12be7a860d647ee`  
		Last Modified: Tue, 04 Aug 2026 00:57:24 GMT  
		Size: 60.6 MB (60575926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8u502-al2-native-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:7ea4ea92e679a40d146993caea34224c7b70c1de42334ba8c16f3b6b5614542f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5869688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:803ca92811ce781b62861ee33849a4259dd39a8cc43f6a97b726f4137076785d`

```dockerfile
```

-	Layers:
	-	`sha256:7cc455a63812e900cc4d53a5939115e14189284f461a14aa61f88182d8fb62c3`  
		Last Modified: Tue, 04 Aug 2026 00:57:22 GMT  
		Size: 5.9 MB (5859888 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2475254fbbeb5de1475600af42682582c0971072b93f159d0c956012d44387fe`  
		Last Modified: Tue, 04 Aug 2026 00:57:22 GMT  
		Size: 9.8 KB (9800 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8u502-al2-native-jre` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:2de2324bbb949a446a8b023242f246d703c93663c49d7c608ee0562d724312b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.0 MB (118024548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d9caeda0e3c04f5f4bfa90865c849cd162f6823803cf9a6988e299fc4cc2dd8`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 04 Aug 2026 00:28:03 GMT
COPY /rootfs/ / # buildkit
# Tue, 04 Aug 2026 00:28:03 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 00:56:51 GMT
ARG version=1.8.0_502.b07-1
# Tue, 04 Aug 2026 00:56:51 GMT
# ARGS: version=1.8.0_502.b07-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && echo $(rpm -K "${CORRETO_TEMP}/${rpm}")     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1;     done     && yum install -y $(yum deplist ${CORRETO_TEMP}/*.rpm |grep provider | grep -v log4j-cve | tr -s ' ' |cut -d ' ' -f 3 )     && yum install -y fontconfig     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Tue, 04 Aug 2026 00:56:51 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 00:56:51 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto/jre
```

-	Layers:
	-	`sha256:4041c7a5cc201d5453f6440f7ff23df8d11d9ce4770a3ceb9e92cef0fe759860`  
		Last Modified: Tue, 04 Aug 2026 00:28:19 GMT  
		Size: 64.8 MB (64800595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e92488d62ca310aca2ca7866786b0d04c673d1307d3fdd7d9d2da047c1887dae`  
		Last Modified: Tue, 04 Aug 2026 00:57:05 GMT  
		Size: 53.2 MB (53223953 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8u502-al2-native-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:b4d0215bcc8ee1bd759f0ccdce965e1f9d8b9ddc5ee0f5a6987f163e0f6c242b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5671734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38369d3a2fca9b204c75a0283425056f7cbf95f6cbba26c277b91fcd6141e0fc`

```dockerfile
```

-	Layers:
	-	`sha256:aad65cfc903f8b3f9806521a7cc9a0e9b14989ebcc6add0e772064858bc90d6a`  
		Last Modified: Tue, 04 Aug 2026 00:57:04 GMT  
		Size: 5.7 MB (5661857 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:84c1e8107ba8e46cf8a624fdc045a092b9b2477c4ef6db7cff4bd70bf3975267`  
		Last Modified: Tue, 04 Aug 2026 00:57:03 GMT  
		Size: 9.9 KB (9877 bytes)  
		MIME: application/vnd.in-toto+json
