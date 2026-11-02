## `amazoncorretto:8u512-al2-native-jre`

```console
$ docker pull amazoncorretto@sha256:648a0a3426de455ddc2a8c85e3218233037a471d5942ca39ff40c341de53b999
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8u512-al2-native-jre` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:858dbc815a312ad8b48f3dba025629e76d08f322a6601d114576c22a23f880e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.5 MB (123529365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80dc6d621410cdcf2e6d0cfd6e15ab5158d45d152c87b2e47c8323fa7cf2146b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 02 Nov 2026 19:56:12 GMT
COPY /rootfs/ / # buildkit
# Mon, 02 Nov 2026 19:56:12 GMT
CMD ["/bin/bash"]
# Mon, 02 Nov 2026 20:10:02 GMT
ARG version=1.8.0_512.b09-1
# Mon, 02 Nov 2026 20:10:02 GMT
# ARGS: version=1.8.0_512.b09-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && echo $(rpm -K "${CORRETO_TEMP}/${rpm}")     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1;     done     && yum install -y $(yum deplist ${CORRETO_TEMP}/*.rpm |grep provider | grep -v log4j-cve | tr -s ' ' |cut -d ' ' -f 3 )     && yum install -y fontconfig     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Mon, 02 Nov 2026 20:10:02 GMT
ENV LANG=C.UTF-8
# Mon, 02 Nov 2026 20:10:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto/jre
```

-	Layers:
	-	`sha256:0495c25dad2c432d2725b987a8e120fbea60c2f52ab965d1194495d66bd54a79`  
		Last Modified: Sat, 31 Oct 2026 04:10:58 GMT  
		Size: 62.9 MB (62938853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e77c5252efb372d301c85ff088766390aab2c5ae460f62743d40d5731c537999`  
		Last Modified: Mon, 02 Nov 2026 20:10:17 GMT  
		Size: 60.6 MB (60590512 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8u512-al2-native-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:68403e1cf6a1e111c30a06c46a753a6f3cf755778fe6ef1660d0412ce711d5f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5869718 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da0ad3d99a7ac03414ee5c5a273a99beffb475ad41b0d983f33a31a240b73597`

```dockerfile
```

-	Layers:
	-	`sha256:3e58cd13af0999db7a27439a8f2b6c39b1485017f66454bddace9212fb070b98`  
		Last Modified: Mon, 02 Nov 2026 20:10:16 GMT  
		Size: 5.9 MB (5859918 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:59f490f9556135a8a2a6b35b4c426353fbc54f68b6ab5450fbe576eb8ba46b8a`  
		Last Modified: Mon, 02 Nov 2026 20:10:15 GMT  
		Size: 9.8 KB (9800 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8u512-al2-native-jre` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:2391a2dabd72b00c9b56ee839cee29908b8a5fe8037cede43e4f3cee4e3ef02d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.1 MB (118124178 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:872c8b612c13a43ed13e738bcc204bce551926a5a9fdad42d81b0046243d05cc`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 02 Nov 2026 19:56:42 GMT
COPY /rootfs/ / # buildkit
# Mon, 02 Nov 2026 19:56:42 GMT
CMD ["/bin/bash"]
# Mon, 02 Nov 2026 20:09:18 GMT
ARG version=1.8.0_512.b09-1
# Mon, 02 Nov 2026 20:09:18 GMT
# ARGS: version=1.8.0_512.b09-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && echo $(rpm -K "${CORRETO_TEMP}/${rpm}")     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1;     done     && yum install -y $(yum deplist ${CORRETO_TEMP}/*.rpm |grep provider | grep -v log4j-cve | tr -s ' ' |cut -d ' ' -f 3 )     && yum install -y fontconfig     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Mon, 02 Nov 2026 20:09:18 GMT
ENV LANG=C.UTF-8
# Mon, 02 Nov 2026 20:09:18 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto/jre
```

-	Layers:
	-	`sha256:ec84068a79e503a31a893b9fd91255e63276a7d88c803d10789070f5f0d1907a`  
		Last Modified: Mon, 02 Nov 2026 19:56:57 GMT  
		Size: 64.8 MB (64805958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b75848cbaaed50811be9577549868ad8d51d36ab224d6f636858e4a8e2a87296`  
		Last Modified: Mon, 02 Nov 2026 20:09:32 GMT  
		Size: 53.3 MB (53318220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8u512-al2-native-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:c847d747861237566d8567d03d1dbca73e129801de572717b06978c6fa6c6d54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5671765 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5493b83481f93995d05ee432597c2890a2449e9a57b6807d5c33f30cfc295ac`

```dockerfile
```

-	Layers:
	-	`sha256:a9e8e2ecf0b327c33f593f82237cae483c10f3101c1c20294cd2073a5fa55306`  
		Last Modified: Mon, 02 Nov 2026 20:09:31 GMT  
		Size: 5.7 MB (5661887 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:89d23dd56c566c82677b9806bf65e2abe8aaf3b75687f5ed78a88d1436d8b4e9`  
		Last Modified: Mon, 02 Nov 2026 20:09:31 GMT  
		Size: 9.9 KB (9878 bytes)  
		MIME: application/vnd.in-toto+json
