## `amazoncorretto:17-al2-native-jdk`

```console
$ docker pull amazoncorretto@sha256:bef5eabc276abc5017231b0afd5ca616309e83eb5548c25caf72a75ac27d69bc
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-al2-native-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:e4e1155f2941bdf0faa6b0d782b3e0dc36a201d4aebdd078c3d025a9041df881
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.8 MB (228819825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1632bfb44de4d68fbdf399e029b421a854488392871112892f64a4f33f499cb9`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 20 Aug 2026 16:56:04 GMT
COPY /rootfs/ / # buildkit
# Thu, 20 Aug 2026 16:56:04 GMT
CMD ["/bin/bash"]
# Thu, 20 Aug 2026 17:20:23 GMT
ARG version=17.0.20.10-1
# Thu, 20 Aug 2026 17:20:23 GMT
# ARGS: version=17.0.20.10-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2.1.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2.1.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2.1.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2.1.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && if [[ ${rpm} != *jmods* ]]; then       yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -vE "log4j-cve|corretto" | tr -s ' ' |cut -d ' ' -f 3 );       fi;       done     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-17-amazon-corretto.${ARCH} -name src.zip -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Thu, 20 Aug 2026 17:20:23 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:20:23 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:7c706b7b88f32b6151af294498eecab3a3d1918791c514fd83c5da5c67eb0115`  
		Last Modified: Tue, 18 Aug 2026 22:35:39 GMT  
		Size: 63.0 MB (62974016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f5769d1f34b0100cd1011d3b8a55bedabc0042799b1694af189e8ebdef23b9b`  
		Last Modified: Thu, 20 Aug 2026 17:20:46 GMT  
		Size: 165.8 MB (165845809 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2-native-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:ed50cc9911488cc89e12a65cc55b4deba901dbe40aba2e0cc1cedbc770608a59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (5982824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18a8b343b1da6010d5a7fb355bc9ee39982c991ef61704c6431db30af1c87ba8`

```dockerfile
```

-	Layers:
	-	`sha256:ec05b6f0f96c161e520a9959d229d7d68a09600ea7232b3ddc3580616bafe10b`  
		Last Modified: Thu, 20 Aug 2026 17:20:42 GMT  
		Size: 6.0 MB (5972764 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:26184454c060d17efb831a75c2c05c5d3c314c6ac5fedfd977c53dfa65cf8d2b`  
		Last Modified: Thu, 20 Aug 2026 17:20:42 GMT  
		Size: 10.1 KB (10060 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:17-al2-native-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:2ecff8d9f3631bf1050de1d31660e3e90d312ef0ba7888680e8c5db7c7f1f5f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.1 MB (221058305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1fa73549bc0bcce747a9b4c484302efabce732d3e269568c083700c45e797bd`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 20 Aug 2026 16:55:50 GMT
COPY /rootfs/ / # buildkit
# Thu, 20 Aug 2026 16:55:50 GMT
CMD ["/bin/bash"]
# Thu, 20 Aug 2026 17:17:10 GMT
ARG version=17.0.20.10-1
# Thu, 20 Aug 2026 17:17:10 GMT
# ARGS: version=17.0.20.10-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2.1.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2.1.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2.1.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2.1.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && if [[ ${rpm} != *jmods* ]]; then       yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -vE "log4j-cve|corretto" | tr -s ' ' |cut -d ' ' -f 3 );       fi;       done     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-17-amazon-corretto.${ARCH} -name src.zip -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Thu, 20 Aug 2026 17:17:10 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:17:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:487930dafcbd912a1d47c9e792c2aea4e910496ba2af16620c70488227a4b1e7`  
		Last Modified: Wed, 19 Aug 2026 14:14:07 GMT  
		Size: 64.8 MB (64789116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3b208bcac6f26d6bc4144aabfb0edbafd9c70357520d29f34fcd50abfb251f8`  
		Last Modified: Thu, 20 Aug 2026 17:17:31 GMT  
		Size: 156.3 MB (156269189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2-native-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:22d8d3e0521e5de36bab657e5f293fa2c0f6ebd98641a8e13bca191a9055e83d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5774774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1772d668d3a409d33bc5a847ca2028a74a048be340bee01e81b0e13f60060226`

```dockerfile
```

-	Layers:
	-	`sha256:2cc3c893bfc431e0e9d059ef4ef98ef83baed4b6110d834acf2a6334fbd371cd`  
		Last Modified: Thu, 20 Aug 2026 17:17:28 GMT  
		Size: 5.8 MB (5764635 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:69ad04e7fb93483a7cf3760e859dddc2bc7eaac0245b3875601361e63142a615`  
		Last Modified: Thu, 20 Aug 2026 17:17:28 GMT  
		Size: 10.1 KB (10139 bytes)  
		MIME: application/vnd.in-toto+json
