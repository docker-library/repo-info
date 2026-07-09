## `amazoncorretto:8-al2-native-jre`

```console
$ docker pull amazoncorretto@sha256:dd8c2435d8bb430ba0cb4fc7bab6b085e0ef98fbf5d0eae1ec7825058d6dcd30
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8-al2-native-jre` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:6d4ac636686c777e7d4b2414945f223704ea4a96fb8e376f9ed4808e13be5a94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.1 MB (172112944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff1d8a59c9217bb74d56c66d217db5325a9fedbfbd0d45f3f48148af48339ade`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 08 Jul 2026 20:25:54 GMT
COPY /rootfs/ / # buildkit
# Wed, 08 Jul 2026 20:25:54 GMT
CMD ["/bin/bash"]
# Wed, 08 Jul 2026 21:11:06 GMT
ARG version=1.8.0_492.b09-2
# Wed, 08 Jul 2026 21:11:06 GMT
# ARGS: version=1.8.0_492.b09-2
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && echo $(rpm -K "${CORRETO_TEMP}/${rpm}")     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1;     done     && yum install -y $(yum deplist ${CORRETO_TEMP}/*.rpm |grep provider | grep -v log4j-cve | tr -s ' ' |cut -d ' ' -f 3 )     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Wed, 08 Jul 2026 21:11:06 GMT
ENV LANG=C.UTF-8
# Wed, 08 Jul 2026 21:11:06 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto/jre
```

-	Layers:
	-	`sha256:900a03988e5535b8fa16eca2a88ea4d98129caeae92c97c1cb9cd28fdddbbaad`  
		Last Modified: Wed, 08 Jul 2026 10:41:40 GMT  
		Size: 63.0 MB (62958380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:580123f5dfd681073df67f3d947e66854e9da00d61fac3c815f9e0085817ee7e`  
		Last Modified: Wed, 08 Jul 2026 21:11:29 GMT  
		Size: 109.2 MB (109154564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-al2-native-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:b0840c50731e83ee7d7b3c8d008db0660271fef54f342ec96fd87e1093e6b186
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7513903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e795e7c9b8ce151e41a3de34525d511b90dac093430e26af0983e3e82012e7bd`

```dockerfile
```

-	Layers:
	-	`sha256:cbb7639305e30acc32a89457384a064953a99626a5cede48ede8149f7c0543ce`  
		Last Modified: Wed, 08 Jul 2026 21:11:27 GMT  
		Size: 7.5 MB (7504229 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:62cf6e7fb8b7473256a4723a5d18e8382fad77ca7b1361380987cf623856f212`  
		Last Modified: Wed, 08 Jul 2026 21:11:26 GMT  
		Size: 9.7 KB (9674 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8-al2-native-jre` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:f568b1d911939b6eb6d44e764419c26723582f0e2953f4180f81e0696a788618
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.7 MB (117687248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e57ac501963d2d028725ac357f41a9e84ec7fb623dd025afd37746df111739b9`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 08 Jul 2026 20:25:16 GMT
COPY /rootfs/ / # buildkit
# Wed, 08 Jul 2026 20:25:16 GMT
CMD ["/bin/bash"]
# Wed, 08 Jul 2026 21:10:47 GMT
ARG version=1.8.0_492.b09-2
# Wed, 08 Jul 2026 21:10:47 GMT
# ARGS: version=1.8.0_492.b09-2
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && echo $(rpm -K "${CORRETO_TEMP}/${rpm}")     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1;     done     && yum install -y $(yum deplist ${CORRETO_TEMP}/*.rpm |grep provider | grep -v log4j-cve | tr -s ' ' |cut -d ' ' -f 3 )     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Wed, 08 Jul 2026 21:10:47 GMT
ENV LANG=C.UTF-8
# Wed, 08 Jul 2026 21:10:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto/jre
```

-	Layers:
	-	`sha256:2fb7467b49ea9922ec92b3b41cd0ae9ae2840cce49082c60c621e4e388aabb23`  
		Last Modified: Wed, 08 Jul 2026 20:25:31 GMT  
		Size: 64.8 MB (64787879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7977723356474a779a8d813c2228fdbff703ada4af66395b1c8364e63a741e7d`  
		Last Modified: Wed, 08 Jul 2026 21:11:02 GMT  
		Size: 52.9 MB (52899369 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-al2-native-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:2e9ade8b7b5de5f2f1cd35d4e2db9faaa2238fe468f7de2871200568bb213261
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5628741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5682986a5d9b25c10ee693c9c218453c93cee22cdb1e1655da418f1474c4ed14`

```dockerfile
```

-	Layers:
	-	`sha256:e71301fee3c1f841841a3cd0fcb53e881cecc61c00792ffa4eddc361ca5d72b8`  
		Last Modified: Wed, 08 Jul 2026 21:11:00 GMT  
		Size: 5.6 MB (5618988 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bacb1e83836f7371b6746b7c23fed04680d25c048be9e5d4caac4a2281db323e`  
		Last Modified: Wed, 08 Jul 2026 21:11:00 GMT  
		Size: 9.8 KB (9753 bytes)  
		MIME: application/vnd.in-toto+json
