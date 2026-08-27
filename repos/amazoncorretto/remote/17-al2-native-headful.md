## `amazoncorretto:17-al2-native-headful`

```console
$ docker pull amazoncorretto@sha256:8fc8fd2feeb72e537c4c6593ed7c85a34c4e5b285a07c1bb8c1974f95d13a7b7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-al2-native-headful` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:9ec348073632a2fcad7d570e1a13e1048b2f5b7db70be196f76ea6320a339a93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.3 MB (154303294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35206bbe1aad4018c1474903248ec26d7b9562b98cf86c279f2e85d2b37433a7`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 27 Aug 2026 18:29:06 GMT
COPY /rootfs/ / # buildkit
# Thu, 27 Aug 2026 18:29:06 GMT
CMD ["/bin/bash"]
# Thu, 27 Aug 2026 19:11:58 GMT
ARG version=17.0.20.10-1
# Thu, 27 Aug 2026 19:11:58 GMT
# ARGS: version=17.0.20.10-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2.1.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2.1.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -vE "log4j-cve|corretto" | tr -s ' ' |cut -d ' ' -f 3 );     done     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-17-amazon-corretto.${ARCH} -name src.zip -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Thu, 27 Aug 2026 19:11:58 GMT
ENV LANG=C.UTF-8
# Thu, 27 Aug 2026 19:11:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:7b5924e8d322730e9c4e8894d8783a6efb8f7553b1186599f35e97dfa4b7372d`  
		Last Modified: Thu, 27 Aug 2026 17:56:29 GMT  
		Size: 63.0 MB (62973824 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b2b74c09752048bd6c14e4bdfb061f6ba3b23d094b5b82924cc081fadc43c5f`  
		Last Modified: Thu, 27 Aug 2026 19:12:17 GMT  
		Size: 91.3 MB (91329470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2-native-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:98f9c80b470360842ca535265e69acdd2acb00f6cd76abf87a4c262d5dfa51fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5876352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ddf1db0d8cf0a333349a80a3dfb4f608444bab28773cb75094b8ff325ba76e91`

```dockerfile
```

-	Layers:
	-	`sha256:d78a64c43f88cbbe0ff28848efbcc432ead0494b4ba63e7585993e0024362c8b`  
		Last Modified: Thu, 27 Aug 2026 19:12:15 GMT  
		Size: 5.9 MB (5866764 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e77c2c4bac7d12d244a53da09eea214c8d72897e18858fec9c7146dbafd3838c`  
		Last Modified: Thu, 27 Aug 2026 19:12:15 GMT  
		Size: 9.6 KB (9588 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:17-al2-native-headful` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:162062acd6130c584ed26510a01e86714bf2c6d349fb5bac0d25823c42ce1d64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.7 MB (146728474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0cbf075adf796f73ed12ac24ec2d5c371bb9348dfa6a4c5e495cefd2a2a74363`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 27 Aug 2026 18:28:04 GMT
COPY /rootfs/ / # buildkit
# Thu, 27 Aug 2026 18:28:04 GMT
CMD ["/bin/bash"]
# Thu, 27 Aug 2026 19:11:26 GMT
ARG version=17.0.20.10-1
# Thu, 27 Aug 2026 19:11:26 GMT
# ARGS: version=17.0.20.10-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2.1.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2.1.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -vE "log4j-cve|corretto" | tr -s ' ' |cut -d ' ' -f 3 );     done     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-17-amazon-corretto.${ARCH} -name src.zip -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Thu, 27 Aug 2026 19:11:26 GMT
ENV LANG=C.UTF-8
# Thu, 27 Aug 2026 19:11:26 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:2b41bf6c0b7311e7e581c43ef89dcfd7673d76db2f93fc00703cb6394c88ccf2`  
		Last Modified: Thu, 27 Aug 2026 18:15:57 GMT  
		Size: 64.8 MB (64790556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87973bce121b2a4bdf67995eef738a4787572f2171c6d099c8d3d07fa0445806`  
		Last Modified: Thu, 27 Aug 2026 19:11:44 GMT  
		Size: 81.9 MB (81937918 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2-native-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:48aae81fd676f2760f4da06b3ea9c0e6b800feb3411aa461015c5baf410c5f79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5668178 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5a5b8d8120f57c529eb252048771b29a786289fde90a876221a45477c7fdac0`

```dockerfile
```

-	Layers:
	-	`sha256:0ce606a85d892d40fd37b2eb3911828e68e74f16c69470e32331a5bf258dfece`  
		Last Modified: Thu, 27 Aug 2026 19:11:42 GMT  
		Size: 5.7 MB (5658508 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dd22c2f6051de9ad57af01359e953e92d44a8cf522e844496a53c7473c074cab`  
		Last Modified: Thu, 27 Aug 2026 19:11:42 GMT  
		Size: 9.7 KB (9670 bytes)  
		MIME: application/vnd.in-toto+json
