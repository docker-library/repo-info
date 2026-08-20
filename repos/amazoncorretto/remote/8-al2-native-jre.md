## `amazoncorretto:8-al2-native-jre`

```console
$ docker pull amazoncorretto@sha256:8b5e7865d141e42b0f11b703a4abc96bf092afc3876b969e9fd6404ac24ab323
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8-al2-native-jre` - linux; amd64

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

### `amazoncorretto:8-al2-native-jre` - unknown; unknown

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

### `amazoncorretto:8-al2-native-jre` - linux; arm64 variant v8

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

### `amazoncorretto:8-al2-native-jre` - unknown; unknown

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
