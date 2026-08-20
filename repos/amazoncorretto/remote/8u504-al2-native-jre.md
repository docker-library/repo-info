## `amazoncorretto:8u504-al2-native-jre`

```console
$ docker pull amazoncorretto@sha256:e105dc47129282641b4de256f2b4df594135287eed687908c88b4e1f6b05a727
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8u504-al2-native-jre` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:d61791e9daf1009c6b3db6dfe22e3a44961a1dd255769fefdb5c59b7a886954e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.6 MB (123563583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80b7914059a005cfebf0eb086f00e77082bd14132fdada8bc4f9076e92d9c88e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 20 Aug 2026 16:56:04 GMT
COPY /rootfs/ / # buildkit
# Thu, 20 Aug 2026 16:56:04 GMT
CMD ["/bin/bash"]
# Thu, 20 Aug 2026 17:18:48 GMT
ARG version=1.8.0_504.b01-1
# Thu, 20 Aug 2026 17:18:48 GMT
# ARGS: version=1.8.0_504.b01-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && echo $(rpm -K "${CORRETO_TEMP}/${rpm}")     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1;     done     && yum install -y $(yum deplist ${CORRETO_TEMP}/*.rpm |grep provider | grep -v log4j-cve | tr -s ' ' |cut -d ' ' -f 3 )     && yum install -y fontconfig     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Thu, 20 Aug 2026 17:18:48 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:18:48 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto/jre
```

-	Layers:
	-	`sha256:7c706b7b88f32b6151af294498eecab3a3d1918791c514fd83c5da5c67eb0115`  
		Last Modified: Tue, 18 Aug 2026 22:35:39 GMT  
		Size: 63.0 MB (62974016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7be70f007b84702a21fe3dbd096406a50fcfaef96763ac0af62b07cd08ed9f52`  
		Last Modified: Thu, 20 Aug 2026 17:19:01 GMT  
		Size: 60.6 MB (60589567 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8u504-al2-native-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:608e036a778aaaab09d869af9edd83ca14d13f1be4a9bdd53874a8fdbad069e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5869704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f71ecb0a4ace3b55b4ddc653848554b7a06cef1bb65e1d591a557654006985a`

```dockerfile
```

-	Layers:
	-	`sha256:494ffe59560ccba52860cad768ceb855dbf5e9fe1f01b1cf504dc726324e057c`  
		Last Modified: Thu, 20 Aug 2026 17:19:00 GMT  
		Size: 5.9 MB (5859904 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cf81cc095f6707329eee361c407f72daadf918a18282dc7675455d2a83c5fd6a`  
		Last Modified: Thu, 20 Aug 2026 17:18:59 GMT  
		Size: 9.8 KB (9800 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8u504-al2-native-jre` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:0854f5b6d7970f4bb69fd5c9da68c9d810d0fdf5d205af884df1f7df9c7338a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.0 MB (118000706 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a43ca95b2203f9b95391073c71d54366a3f5a69e35295a247b1a599e7fcfc984`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 20 Aug 2026 16:55:50 GMT
COPY /rootfs/ / # buildkit
# Thu, 20 Aug 2026 16:55:50 GMT
CMD ["/bin/bash"]
# Thu, 20 Aug 2026 17:15:36 GMT
ARG version=1.8.0_504.b01-1
# Thu, 20 Aug 2026 17:15:36 GMT
# ARGS: version=1.8.0_504.b01-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && echo $(rpm -K "${CORRETO_TEMP}/${rpm}")     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1;     done     && yum install -y $(yum deplist ${CORRETO_TEMP}/*.rpm |grep provider | grep -v log4j-cve | tr -s ' ' |cut -d ' ' -f 3 )     && yum install -y fontconfig     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Thu, 20 Aug 2026 17:15:36 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:15:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto/jre
```

-	Layers:
	-	`sha256:487930dafcbd912a1d47c9e792c2aea4e910496ba2af16620c70488227a4b1e7`  
		Last Modified: Wed, 19 Aug 2026 14:14:07 GMT  
		Size: 64.8 MB (64789116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94e8e98c2969b36200987f657c92d6b75e861a2299677ff8a8f994d35a0486a8`  
		Last Modified: Thu, 20 Aug 2026 17:15:50 GMT  
		Size: 53.2 MB (53211590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8u504-al2-native-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:4abdc7be3693241a2bfb89658f9a9df1ab2c466014b4c30640b98aaab6060afc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5671753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:389306a21c912ff8c6e7f66a19bd6c15c0ac972dfc99fcfbc825721ab848bf63`

```dockerfile
```

-	Layers:
	-	`sha256:dd7c6cc264b58eaf1715d486bfd998ca1c08ad835bcebdc2d8af827bf61b4962`  
		Last Modified: Thu, 20 Aug 2026 17:15:49 GMT  
		Size: 5.7 MB (5661873 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a1b571f328f7234c6c493a1270778ac405a7c4f74b40f11291da1bd9b43df987`  
		Last Modified: Thu, 20 Aug 2026 17:15:48 GMT  
		Size: 9.9 KB (9880 bytes)  
		MIME: application/vnd.in-toto+json
